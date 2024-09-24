import 'package:apidash/codegen/codegen.dart';
import 'package:apidash/consts.dart';
import 'package:test/test.dart';
import '../models/request_models.dart';


void main(){

  final codeGen = Codegen();
  group('GET Request',(){
    test('GET1', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet1, "https"),
          expectedCode);
    });
    test('GET2', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/country/data?code=US".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet2, "https"),
          expectedCode);
    });

    test('GET3', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/country/data?code=IND".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet3, "https"),
          expectedCode);
    });

    test('GET4', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/humanize/social?num=8700000&digits=3&system=SS&add_space=true&trailing_zeros=true".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet4, "https"),
          expectedCode);
    });


     test('GET5', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.github.com/repos/foss42/apidash".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)        
              .header("User-Agent", "Test Agent")
        
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet5, "https"),
          expectedCode);
    });



     test('GET6', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.github.com/repos/foss42/apidash?raw=true".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)        
              .header("User-Agent", "Test Agent")
        
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet6, "https"),
          expectedCode);
    });




     test('GET7', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;


use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet7, "https"),
          expectedCode);
    });




     test('GET8', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.github.com/repos/foss42/apidash?raw=true".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)        
              .header("User-Agent", "Test Agent")
        
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet8, "https"),
          expectedCode);
    });
    test('GET9', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/humanize/social?num=8700000&add_space=true".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet9, "https"),
          expectedCode);
    });

    test('GET10', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/humanize/social".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)        
              .header("User-Agent", "Test Agent")
        
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet10, "https"),
          expectedCode);
    });


    
    test('GET11', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/humanize/social?num=8700000&digits=3".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)        
              .header("User-Agent", "Test Agent")
        
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet11, "https"),
          expectedCode);
    });


    test('GET12', (){
      const expectedCode =r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/humanize/social".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("GET")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelGet12, "https"),
          expectedCode);
    });

  });


  group('HEAD Request', (){
    test('HEAD1',(){
      const expectedCode = """

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("HEAD")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
    expect(codeGen.getCode(CodegenLanguage.rustHyper, requestModelHead1, "https"),
          expectedCode);
    });

    test('HEAD2',(){
      const expectedCode = """

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("HEAD")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
    expect(codeGen.getCode(CodegenLanguage.rustHyper, requestModelHead2, "https"),
          expectedCode);
    });



  });


    group('POST Request', () {
    test('POST1', () {
      const expectedCode = r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;


use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/case/lower".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("POST")
              .uri(url)        
              .body(Body::from(r#"{
"text": "I LOVE Flutter"
}"#))?;
    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
      expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelPost1, "https"),
          expectedCode);
    });
    test('POST2', () {
      const expectedCode = r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/case/lower".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("POST")
              .uri(url)        
              .body(Body::from(json!({
"text": "I LOVE Flutter",
"flag": null,
"male": true,
"female": false,
"no": 1.2,
"arr": ["null", "true", "false", null]
}).to_string()))?;
    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
      expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelPost2, "https"),
          expectedCode);
    });
    test('POST3', () {
      const expectedCode = r"""
use curl::easy::Easy;
use serde_json::json;
use curl::easy::List;

fn main() {
  let mut easy = Easy::new();
  let mut data = Vec::new();
  easy.url("https://api.apidash.dev/case/lower").unwrap();
  easy.post(true).unwrap();

  easy.post_fields_copy(json!({
"text": "I LOVE Flutter"
}).to_string().as_bytes()).unwrap();

  let mut list = List::new();
  list.append("User-Agent: Test Agent").unwrap();
  list.append("Content-Type: application/json").unwrap();
  easy.http_headers(list).unwrap();
  
  {
    let mut transfer = easy.transfer();
    transfer.write_function(|new_data| {
        data.extend_from_slice(new_data);
        Ok(new_data.len())
    }).unwrap();
    transfer.perform().unwrap();
  }

  let response_body = String::from_utf8_lossy(&data);

  println!("Response body: {}", response_body);
  println!("Response code: {}", easy.response_code().unwrap());
}""";
      expect(
          codeGen.getCode(CodegenLanguage.rustCurl, requestModelPost3, "https"),
          expectedCode);
    });
    test('POST4', () {
      const expectedCode = r"""
extern crate hyper_multipart_rfc7578 as hyper_multipart;
use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;
use hyper_multipart::client::multipart;

use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/io/form".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("POST")
              .uri(url);    
    let mut form = multipart::Form::default();
    form.add_text("text", "API");
    form.add_text("sep", "|");
    form.add_text("times", "3");

    let req = form.set_body_convert::<Body, multipart::Body>(reqBuilder).unwrap();
    
    let res = client.request(req).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);
    

    Ok(())
}

""";
      expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelPost4, "https"),
          expectedCode);
    });
    test('POST5', () {
      const expectedCode = r"""
extern crate hyper_multipart_rfc7578 as hyper_multipart;
use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;
use hyper_multipart::client::multipart;

use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/io/form".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("POST")
              .uri(url)        
              .header("User-Agent", "Test Agent");
            
    let mut form = multipart::Form::default();
    form.add_text("text", "API");
    form.add_text("sep", "|");
    form.add_text("times", "3");

    let req = form.set_body_convert::<Body, multipart::Body>(reqBuilder).unwrap();
    
    let res = client.request(req).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);
    

    Ok(())
}

""";
      expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelPost5, "https"),
          expectedCode);
    });
    test('POST6', () {
      const expectedCode = r"""
extern crate hyper_multipart_rfc7578 as hyper_multipart;
use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;
use hyper_multipart::client::multipart;

use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/io/img".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("POST")
              .uri(url);    
    let mut form = multipart::Form::default();
    form.add_text("token", "xyz");
    form.add_file("imfile", r"/Documents/up/1.png").unwrap();

    let req = form.set_body_convert::<Body, multipart::Body>(reqBuilder).unwrap();
    
    let res = client.request(req).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);
    

    Ok(())
}

""";
      expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelPost6, "https"),
          expectedCode);
    });
    test('POST7', () {
      const expectedCode = r"""
extern crate hyper_multipart_rfc7578 as hyper_multipart;
use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;
use hyper_multipart::client::multipart;

use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/io/img".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("POST")
              .uri(url);    
    let mut form = multipart::Form::default();
    form.add_text("token", "xyz");
    form.add_file("imfile", r"/Documents/up/1.png").unwrap();

    let req = form.set_body_convert::<Body, multipart::Body>(reqBuilder).unwrap();
    
    let res = client.request(req).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);
    

    Ok(())
}

""";
      expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelPost7, "https"),
          expectedCode);
    });
    test('POST8', () {
      const expectedCode = r"""
extern crate hyper_multipart_rfc7578 as hyper_multipart;
use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;
use hyper_multipart::client::multipart;

use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://api.apidash.dev/io/form?size=2&len=3".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("POST")
              .uri(url);    
    let mut form = multipart::Form::default();
    form.add_text("text", "API");
    form.add_text("sep", "|");
    form.add_text("times", "3");

    let req = form.set_body_convert::<Body, multipart::Body>(reqBuilder).unwrap();
    
    let res = client.request(req).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);
    

    Ok(())
}

""";
      expect(
          codeGen.getCode(CodegenLanguage.rustHyper, requestModelPost8, "https"),
          expectedCode);
    });
    test('POST9', () {
      const expectedCode = r"""
use curl::easy::Easy;
use curl::easy::List;

fn main() {
  let mut easy = Easy::new();
  let mut data = Vec::new();
  easy.url("https://api.apidash.dev/io/img?size=2&len=3").unwrap();
  easy.post(true).unwrap();

  let mut form = curl::easy::Form::new();
  
  form.part("token")
    .contents(b"xyz")
    .add().unwrap();
  
  form.part("imfile")
    .file("/Documents/up/1.png")
    .add().unwrap();
  
  easy.httppost(form).unwrap();
    let mut list = List::new();
  list.append("User-Agent: Test Agent").unwrap();
  list.append("Keep-Alive: true").unwrap();
  easy.http_headers(list).unwrap();
  
  {
    let mut transfer = easy.transfer();
    transfer.write_function(|new_data| {
        data.extend_from_slice(new_data);
        Ok(new_data.len())
    }).unwrap();
    transfer.perform().unwrap();
  }

  let response_body = String::from_utf8_lossy(&data);

  println!("Response body: {}", response_body);
  println!("Response code: {}", easy.response_code().unwrap());
}""";
      expect(
          codeGen.getCode(CodegenLanguage.rustCurl, requestModelPost9, "https"),
          expectedCode);
    });
  });
  

  group('PUT Request', (){
    test('PUT1',(){
      const expectedCode = """

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://reqres.in/api/users/2".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("PUT")
              .uri(url)        
              .body(Body::from(json!({
"name": "morpheus",
"job": "zion resident"
}).to_string()))?;
    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
    expect(codeGen.getCode(CodegenLanguage.rustHyper, requestModelPut1, "https"),
          expectedCode);
    });     
   
  

  });

  group('PATCH Request', (){
    test('PATCH1',(){
      const expectedCode = """

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://reqres.in/api/users/2".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("PATCH")
              .uri(url)        
              .body(Body::from(json!({
"name": "marfeus",
"job": "accountant"
}).to_string()))?;
    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
  expect(codeGen.getCode(CodegenLanguage.rustHyper, requestModelPatch1, "https"),
          expectedCode);
    });
  });

  group('DELETE Request', () {
    test('DELETE1', () {
      const expectedCode = r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://reqres.in/api/users/2".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("DELETE")
              .uri(url)
              .body(Body::empty())?;

    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
      expect(
          codeGen.getCode(
              CodegenLanguage.rustHyper, requestModelDelete1, "https"),
          expectedCode);
    });
    test('DELETE2', () {
      const expectedCode = r"""

use hyper::{Body, Client, Request, Uri};
use hyper::client::HttpConnector;
use hyper_tls::HttpsConnector;
use std::convert::TryInto;

use serde_json::json;
use tokio;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let https = HttpsConnector::new();
    let client = Client::builder().build::<_, hyper::Body>(https);
    let url = "https://reqres.in/api/users/2".parse::<Uri>().unwrap();
    let reqBuilder = Request::builder()
              .method("DELETE")
              .uri(url)        
              .body(Body::from(json!({
"name": "marfeus",
"job": "accountant"
}).to_string()))?;
    let res = client.request(reqBuilder).await?;
    let status = res.status();
    let body_bytes = hyper::body::to_bytes(res).await?;
    let body = String::from_utf8(body_bytes.to_vec())?;

    println!("Response Status: {}", status);
    println!("Response: {:?}", body);

    Ok(())
}

""";
      expect(
          codeGen.getCode(
              CodegenLanguage.rustHyper, requestModelDelete2, "https"),
          expectedCode);
    });
  });


  
}