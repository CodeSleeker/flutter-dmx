package com.example.flutter_dmx.models

data class DmxPacket (
    val address: Int,
    val byteData: List<Int>,
    val index: Int
)