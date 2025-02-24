import 'package:googleapis_auth/auth_io.dart';

class AccessTokenFirebase {
  static String firebaseMessaginScope =
      "https://www.googleapis.com/auth/firebase.messaging";

  Future<String> getAccessToken() async {
    final client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson(
          {
            "type": "service_account",
            "project_id": "fir-setup-4dc57",
            "private_key_id": "4bba08ed48e1f1bf3e5b9dc6517f41532d25fceb",
            "private_key":
                "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDWj3xi48ThGV2t\na4CtuG2rPXLEByF3IyX7EF0usNL7gbsfrxev56sxM/CC5psCuTfI9qLa89AzRyad\nk9S0DT+t+vTZapzRyvkNrU2iOpYaeuTswP2wJAgWiM3Lx/pB5/xumin982Plmf+/\nOQheNDl7wp34O8huXovO6QGaYcJAcCgAYO6SpRSd1jRYgDGfigJFdZYoay0slZqC\n8mwGTAyvf6V+zt/9rPNczmgv2OIrr/flsfRg3t1MqyfV9WXdAKZcAr1zUrJO/D4B\npIg4u0oUc+/JYx+EtsDv79mwG22H9XsKE2sMD75HY1Wv/kAU/vj0Ll8Wa8mm+Pyg\nrxdrOR7VAgMBAAECggEAEnmwBQbmZtirkZmKbssM/HwR1BHmHo9i/5uw3mqg/EG3\nRnrp//5jphy6Ftd7HRCsXkxoiRCKCsRTbamzXN6wL0/HAiq1PrZq3DPiVbgUQUr4\nR++1WJO9s40LpYK+iKrMeIyjVYf9/+ETHdjwIMZ/9al0N1IUh/ZxtPso5W2KD8jA\nIIFTpHYdOD7rm6DIaThNQ0eouhQ+UZfOT1XxLZcpf/iAxpEYyjvKoM5COGd553h1\ny3eSPGLpX2dqw6yOVJKpSmSUjHasdQOdJk74wPDbkowloys9RvF8enFStlrmlZNb\ndC2erIpFo0WVvlanlZOFkhFdBygVgnSBbDxfqHI1KQKBgQD61OJQBSL0qqtJ0A5F\nwlk3URji/YUGtp0Dy6zngG2CCmFu9ED2RKMZrVG8NrJM3Qb1f9dMqttcZeuPLVk3\nqXpVJnnJr8gAhncaEz4uy1J2G4CP83b5eX5S7y3AmNlYxZoGfFxQiuL2FMKY/gU1\nymhyhvS/Ljpoa6rRMJMX7uPqOQKBgQDa+0ZcgzL03zCX4LGzhZsanCH/ptWqQwWO\nTkm5e9zKfRtd23SSh5l0xN6w0d4z0pWsG43YQ39Bg32HB9ZNhOtWaYQ8rEtEmFoJ\nhYkbS0pu/yTtEr/uvKZFSsRhwXssog+PYn3N45VFD1vRNuqbTEuwzckEA1DAtamb\nMT6Db1HJfQKBgDlUXOGTOvkW5Q162zhAgmmtRHXlIfl11Y9fhwZmiSD2xGw6sXpY\nF7svrQXKrpf40LVd4dSpHHgS53MTF1gsiURbBez+G0Vbdm9kRIsnd5J9GLZOHDxK\n8397IUbq6Ipsp5ah5+uUwukht5SGQqSXvaWniNsFct4Y9bLYWlZXCIqpAoGAZMIX\npvurV6bWihuWSF8idgT/U82lJJmAFfGJ1LHcbsNP80jGA6InBuaK/NskHb44ph9r\njeXIyRFCkf4WKkcNrg4RDYXNgDuFujnaU1e6YQY/LGJjM+tTqjBz2fMXxPqwpC4S\nasjb5xHhEovtORXLAgg+BP2ti25LIyBufjWbcVUCgYEA3BWP9NMEMF09noMvVabg\ng2ufMWHpHhj7ljvRw1GH5m85YDTNMco97355IM9Tk+D4H5UL3r+7+hwiUUZgGf4y\ninIQPv7pG3Qd+d3LnfRQpQSpsCpBRm3DdaeCPFv2cqEjAN2Agfan0UxMhiI3S9v4\nMq4tE8gJsC0EdsUBZM7N7/Q=\n-----END PRIVATE KEY-----\n",
            "client_email":
                "firebase-adminsdk-fbsvc@fir-setup-4dc57.iam.gserviceaccount.com",
            "client_id": "104344333118158844630",
            "auth_uri": "https://accounts.google.com/o/oauth2/auth",
            "token_uri": "https://oauth2.googleapis.com/token",
            "auth_provider_x509_cert_url":
                "https://www.googleapis.com/oauth2/v1/certs",
            "client_x509_cert_url":
                "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40fir-setup-4dc57.iam.gserviceaccount.com",
            "universe_domain": "googleapis.com"
          },
        ),
        [firebaseMessaginScope]);

    final accessToken = client.credentials.accessToken.data;
    return accessToken;
  }
}
