import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetDetalhesLocalCall {
  static Future<ApiCallResponse> call({
    String place = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET DETALHES LOCAL',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/details/json?place_id=${place}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GETFotoCall {
  static Future<ApiCallResponse> call({
    String foto = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET Foto',
      apiUrl:
          'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${foto}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class POSTavaliacaoCall {
  static Future<ApiCallResponse> call({
    String placeId = '',
    String placeName = '',
    String userId = '',
    String userName = '',
    String internalCirculation = 'NÃO_SE_APLICA',
    String parking = 'NÃO_SE_APLICA',
    String sidewalking = 'NÃO_SE_APLICA',
    String audioVisual = 'NÃO_SE_APLICA',
    String mainEntrance = 'NÃO_SE_APLICA',
    String accessibleBathroom = 'NÃO_SE_APLICA',
    double star,
    String comentario = '',
    String userImage = '',
  }) {
    final body = '''
{
  "placeId": "${placeId}",
  "placeName": "${placeName}",
  "userId": "${userId}",
  "userName": "${userName}",
  "internalCirculation": "${internalCirculation}",
  "parking": "${parking}",
  "sidewalk": "${sidewalking}",
  "audioVisual": "${audioVisual}",
  "mainEntrance": "${mainEntrance}",
  "accessibleBathroom": "${accessibleBathroom}",
  "star": "${star}",
  "comentario": "${comentario}",
  "user_image": "${userImage}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTavaliacao',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/evaluation',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'placeId': placeId,
        'placeName': placeName,
        'userId': userId,
        'userName': userName,
        'internalCirculation': internalCirculation,
        'parking': parking,
        'sidewalking': sidewalking,
        'audioVisual': audioVisual,
        'mainEntrance': mainEntrance,
        'accessibleBathroom': accessibleBathroom,
        'star': star,
        'comentario': comentario,
        'user_image': userImage,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class BuscarLocaisPertoUserCall {
  static Future<ApiCallResponse> call({
    String categoria = '',
    String range = '',
    String posicao = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarLocaisPertoUser',
      apiUrl:
          'https://api-tux-biomob.herokuapp.com/biomob-api/places/${categoria}/${posicao}/${range}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$..name''',
      );
  static dynamic endereco(dynamic response) => getJsonField(
        response,
        r'''$..formatted_address''',
      );
  static dynamic nota(dynamic response) => getJsonField(
        response,
        r'''$..rating''',
      );
  static dynamic place(dynamic response) => getJsonField(
        response,
        r'''$..place_id''',
      );
  static dynamic foto(dynamic response) => getJsonField(
        response,
        r'''$..photo_reference''',
      );
}

class GETAvaliacaoPorPlaceIDCall {
  static Future<ApiCallResponse> call({
    String placeId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET avaliacao por placeID',
      apiUrl:
          'https://api-tux-biomob.herokuapp.com/biomob-api/evaluation/place/${placeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GETAvaliacaoUserCall {
  static Future<ApiCallResponse> call({
    String userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GET avaliacao User',
      apiUrl:
          'https://api-tux-biomob.herokuapp.com/biomob-api/evaluation/user/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CadastroDeUsuarioCall {
  static Future<ApiCallResponse> call({
    String email = '',
    String name = '',
    String cpf = '',
    String telefone = '',
    String deficiencia = '',
    String foto = '',
    String password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "name": "${name}",
  "cpf": "${cpf}",
  "telefone": "${telefone}",
  "deficiencia": "${deficiencia}",
  "foto": "${foto}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastro de usuario',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/user/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'name': name,
        'cpf': cpf,
        'telefone': telefone,
        'deficiencia': deficiencia,
        'foto': foto,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class POSTLoginCall {
  static Future<ApiCallResponse> call({
    String email = 'teste@biomob.com',
    String password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Login',
      apiUrl: 'https://api-tux-biomob.herokuapp.com/biomob-api/user/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
