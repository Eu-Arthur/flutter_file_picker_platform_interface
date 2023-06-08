part of location_platform_interface;

class MethodChannelFilePicker extends FilePicker {
  ///
  factory MethodChannelFilePicker() {
    if (_instance == null) {
      const eventChannel = EventChannel('lyokone/location_stream');
      _instance = MethodChannelFilePicker.private(eventChannel);
    }
    return _instance!;
  }

  /// This constructor is only used for testing and shouldn't be accessed by
  /// users of the plugin. It may break or change at any time.
  @visibleForTesting
  MethodChannelFilePicker.private(this._eventChannel);

  static MethodChannelFilePicker? _instance;

  late final EventChannel _eventChannel;
}
