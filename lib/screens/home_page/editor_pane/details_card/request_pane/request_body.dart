import 'package:apidash_core/apidash_core.dart';
import 'package:apidash_design_system/apidash_design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:apidash/providers/providers.dart';
import 'package:apidash/widgets/widgets.dart';
import 'package:apidash/consts.dart';
import 'request_form_data.dart';

class EditRequestBody extends ConsumerWidget {
  const EditRequestBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedId = ref.watch(selectedIdStateProvider);
    final requestModel = ref
        .read(collectionStateNotifierProvider.notifier)
        .getRequestModel(selectedId!);
    final contentType = ref.watch(selectedRequestModelProvider
        .select((value) => value?.httpRequestModel?.bodyContentType));
    final apiType = ref
        .watch(selectedRequestModelProvider.select((value) => value?.apiType));
    final mode = ref.watch(settingsProvider.select(
      (value) => value.isDark,
    ));

    // TODO: #178 GET->POST Currently switches to POST everytime user edits body even if the user intentionally chooses GET
    // final sm = ScaffoldMessenger.of(context);
    // void changeToPostMethod() {
    //   if (requestModel?.httpRequestModel!.method == HTTPVerb.get) {
    //     ref
    //         .read(collectionStateNotifierProvider.notifier)
    //         .update(selectedId, method: HTTPVerb.post);
    //     sm.hideCurrentSnackBar();
    //     sm.showSnackBar(getSnackBar(
    //       "Switched to POST method",
    //       small: false,
    //     ));
    //   }
    // }

    return Column(
      children: [
        (apiType == APIType.rest)
            ? const SizedBox(
                height: kHeaderHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select Content Type:",
                    ),
                    DropdownButtonBodyContentType(),
                  ],
                ),
              )
            : kSizedBoxEmpty,
        switch (apiType) {
          APIType.rest => Expanded(
              child: switch (contentType) {
                ContentType.formdata => const Padding(
                    padding: kPh4,
                    child: FormDataWidget(
                        // TODO: See changeToPostMethod above
                        // changeMethodToPost: changeToPostMethod,
                        )),
                // TODO: Fix JsonTextFieldEditor & plug it here
                ContentType.json => Padding(
                    padding: kPt5o10,
                    child: JsonTextFieldEditor(
                      key: Key("$selectedId-json-body"),
                      fieldKey: "$selectedId-json-body-editor-$mode",
                      initialValue: requestModel?.httpRequestModel?.body,
                      onChanged: (String value) {
                        // changeToPostMethod();
                        ref
                            .read(collectionStateNotifierProvider.notifier)
                            .update(body: value);
                      },
                    ),
                  ),
                _ => Padding(
                    padding: kPt5o10,
                    child: TextFieldEditor(
                      key: Key("$selectedId-body"),
                      fieldKey: "$selectedId-body-editor",
                      initialValue: requestModel?.httpRequestModel?.body,
                      onChanged: (String value) {
                        // changeToPostMethod();
                        ref
                            .read(collectionStateNotifierProvider.notifier)
                            .update(body: value);
                      },
                      hintText: kHintText,
                    ),
                  ),
              },
            ),
          APIType.graphql => Expanded(
              child: Padding(
                padding: kPt5o10,
                child: TextFieldEditor(
                  key: Key("$selectedId-query"),
                  fieldKey: "$selectedId-query-editor",
                  initialValue: requestModel?.httpRequestModel?.query,
                  onChanged: (String value) {
                    ref
                        .read(collectionStateNotifierProvider.notifier)
                        .update(query: value);
                  },
                  hintText: kHintQuery,
                ),
              ),
            ),
          _ => kSizedBoxEmpty,
        }
      ],
    );
  }
}

class DropdownButtonBodyContentType extends ConsumerWidget {
  const DropdownButtonBodyContentType({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(selectedIdStateProvider);
    final requestBodyContentType = ref.watch(selectedRequestModelProvider
        .select((value) => value?.httpRequestModel?.bodyContentType));
    return DropdownButtonContentType(
      contentType: requestBodyContentType,
      onChanged: (ContentType? value) {
        ref
            .read(collectionStateNotifierProvider.notifier)
            .update(bodyContentType: value);
      },
    );
  }
}
