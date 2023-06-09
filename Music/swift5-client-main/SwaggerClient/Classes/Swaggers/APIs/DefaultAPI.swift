//
// DefaultAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class DefaultAPI {
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func musicGet(completion: @escaping ((_ data: MusicItems?,_ error: Error?) -> Void)) {
        musicGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /music
     - examples: [{contentType=application/json, example={
  "bytes": [],
  "empty": true
}}]

     - returns: RequestBuilder<MusicItems> 
     */
    open class func musicGetWithRequestBuilder() -> RequestBuilder<MusicItems> {
        let path = "/music"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<MusicItems>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter itemID: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func musicItemIDDelete(itemID: String, completion: @escaping ((_ data: SuccessResp?,_ error: Error?) -> Void)) {
        musicItemIDDeleteWithRequestBuilder(itemID: itemID).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - DELETE /music/{itemID}
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter itemID: (path)  

     - returns: RequestBuilder<SuccessResp> 
     */
    open class func musicItemIDDeleteWithRequestBuilder(itemID: String) -> RequestBuilder<SuccessResp> {
        var path = "/music/{itemID}"
        let itemIDPreEscape = "\(itemID)"
        let itemIDPostEscape = itemIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemID}", with: itemIDPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SuccessResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter itemID: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func musicItemIDGet(itemID: String, completion: @escaping ((_ data: MusicItem?,_ error: Error?) -> Void)) {
        musicItemIDGetWithRequestBuilder(itemID: itemID).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /music/{itemID}
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter itemID: (path)  

     - returns: RequestBuilder<MusicItem> 
     */
    open class func musicItemIDGetWithRequestBuilder(itemID: String) -> RequestBuilder<MusicItem> {
        var path = "/music/{itemID}"
        let itemIDPreEscape = "\(itemID)"
        let itemIDPostEscape = itemIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemID}", with: itemIDPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<MusicItem>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter musicItem: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func musicPost(musicItem: MusicItem, completion: @escaping ((_ data: SuccessResp?,_ error: Error?) -> Void)) {
        musicPostWithRequestBuilder(musicItem: musicItem).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /music
     - examples: [{contentType=application/json, example={"empty": false}}]
     
     - parameter musicItem: (body)  

     - returns: RequestBuilder<SuccessResp> 
     */
    open class func musicPostWithRequestBuilder(musicItem: MusicItem) -> RequestBuilder<SuccessResp> {
        let path = "/music"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: musicItem)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SuccessResp>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func rootGet(completion: @escaping ((_ data: Empty?,_ error: Error?) -> Void)) {
        rootGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /
     - examples: [{contentType=application/json, example={"empty": true}}]

     - returns: RequestBuilder<Empty> 
     */
    open class func rootGetWithRequestBuilder() -> RequestBuilder<Empty> {
        let path = "/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Empty>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
