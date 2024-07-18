class GenerateKeyRequestModel {
  GenerateKeyRequestModel({
    required this.deviceId,
    required this.deviceName,
    required this.deviceOs,
    required this.appVersion,
    this.longitude,
    this.latitude,
    required this.fcmRegistrationId,
  });

  String deviceId;
  String deviceName;
  String deviceOs;
  String appVersion;
  String? longitude;
  String? latitude;
  String fcmRegistrationId;

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['device_id'] = deviceId;
    _data['device_name'] = deviceName;
    _data['device_os'] = deviceOs;
    _data['app_version'] = appVersion;
    _data['fcm_registration_id'] = fcmRegistrationId;
    return _data;
  }
}
