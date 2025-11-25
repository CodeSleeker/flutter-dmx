/// Represents a low-level DMX command packet.
///
/// Packets contain raw byte/channel data transmitted directly to the controller.
/// Most users do not need to craft packets manually unless doing advanced control.
class DmxPacket {
  /// Starting DMX address for this packet.
  final int address;

  /// Raw DMX byte values to send (0–255).
  final List<int> byteData;

  /// Optional index for identifying packet groups.
  final int? index;

  DmxPacket({required this.address, required this.byteData, this.index});
}
