import 'package:hasura_connect/hasura_connect.dart';

abstract class GraphqlService {
  Future queryGql({required String query});
  Future mutationGql({required String mutationQuery});
}

class GraphqlServiceImpl implements GraphqlService {
  String urlBase = 'http://18.220.252.35:9001/v1/graphql';

  Future<HasuraConnect> _hasuraConnect() async {
    var hasuraConnect = HasuraConnect(
      urlBase,
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': 'Senha123456789',
      },
    );

    return hasuraConnect;
  }

  @override
  Future mutationGql({required String mutationQuery}) async {
    final connection = await _hasuraConnect();
    final res = await connection.mutation(mutationQuery);
    return res['data'];
  }

  @override
  Future queryGql({required String query}) async {
    final connection = await _hasuraConnect();
    final res = await connection.query(query);
    return res['data'];
  }
}
