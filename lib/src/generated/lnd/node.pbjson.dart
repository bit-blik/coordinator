//
//  Generated code. Do not modify.
//  source: lnd/node.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getinfoRequestDescriptor instead')
const GetinfoRequest$json = {
  '1': 'GetinfoRequest',
};

/// Descriptor for `GetinfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getinfoRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRpbmZvUmVxdWVzdA==');

@$core.Deprecated('Use getinfoResponseDescriptor instead')
const GetinfoResponse$json = {
  '1': 'GetinfoResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'alias', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'alias', '17': true},
    {'1': 'color', '3': 3, '4': 1, '5': 12, '10': 'color'},
    {'1': 'num_peers', '3': 4, '4': 1, '5': 13, '10': 'numPeers'},
    {'1': 'num_pending_channels', '3': 5, '4': 1, '5': 13, '10': 'numPendingChannels'},
    {'1': 'num_active_channels', '3': 6, '4': 1, '5': 13, '10': 'numActiveChannels'},
    {'1': 'num_inactive_channels', '3': 7, '4': 1, '5': 13, '10': 'numInactiveChannels'},
    {'1': 'version', '3': 8, '4': 1, '5': 9, '10': 'version'},
    {'1': 'lightning_dir', '3': 9, '4': 1, '5': 9, '10': 'lightningDir'},
    {'1': 'our_features', '3': 10, '4': 1, '5': 11, '6': '.cln.GetinfoOur_features', '9': 1, '10': 'ourFeatures', '17': true},
    {'1': 'blockheight', '3': 11, '4': 1, '5': 13, '10': 'blockheight'},
    {'1': 'network', '3': 12, '4': 1, '5': 9, '10': 'network'},
    {'1': 'fees_collected_msat', '3': 13, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'feesCollectedMsat'},
    {'1': 'address', '3': 14, '4': 3, '5': 11, '6': '.cln.GetinfoAddress', '10': 'address'},
    {'1': 'binding', '3': 15, '4': 3, '5': 11, '6': '.cln.GetinfoBinding', '10': 'binding'},
    {'1': 'warning_bitcoind_sync', '3': 16, '4': 1, '5': 9, '9': 2, '10': 'warningBitcoindSync', '17': true},
    {'1': 'warning_lightningd_sync', '3': 17, '4': 1, '5': 9, '9': 3, '10': 'warningLightningdSync', '17': true},
  ],
  '8': [
    {'1': '_alias'},
    {'1': '_our_features'},
    {'1': '_warning_bitcoind_sync'},
    {'1': '_warning_lightningd_sync'},
  ],
};

/// Descriptor for `GetinfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getinfoResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRpbmZvUmVzcG9uc2USDgoCaWQYASABKAxSAmlkEhkKBWFsaWFzGAIgASgJSABSBWFsaW'
    'FziAEBEhQKBWNvbG9yGAMgASgMUgVjb2xvchIbCgludW1fcGVlcnMYBCABKA1SCG51bVBlZXJz'
    'EjAKFG51bV9wZW5kaW5nX2NoYW5uZWxzGAUgASgNUhJudW1QZW5kaW5nQ2hhbm5lbHMSLgoTbn'
    'VtX2FjdGl2ZV9jaGFubmVscxgGIAEoDVIRbnVtQWN0aXZlQ2hhbm5lbHMSMgoVbnVtX2luYWN0'
    'aXZlX2NoYW5uZWxzGAcgASgNUhNudW1JbmFjdGl2ZUNoYW5uZWxzEhgKB3ZlcnNpb24YCCABKA'
    'lSB3ZlcnNpb24SIwoNbGlnaHRuaW5nX2RpchgJIAEoCVIMbGlnaHRuaW5nRGlyEkAKDG91cl9m'
    'ZWF0dXJlcxgKIAEoCzIYLmNsbi5HZXRpbmZvT3VyX2ZlYXR1cmVzSAFSC291ckZlYXR1cmVziA'
    'EBEiAKC2Jsb2NraGVpZ2h0GAsgASgNUgtibG9ja2hlaWdodBIYCgduZXR3b3JrGAwgASgJUgdu'
    'ZXR3b3JrEjsKE2ZlZXNfY29sbGVjdGVkX21zYXQYDSABKAsyCy5jbG4uQW1vdW50UhFmZWVzQ2'
    '9sbGVjdGVkTXNhdBItCgdhZGRyZXNzGA4gAygLMhMuY2xuLkdldGluZm9BZGRyZXNzUgdhZGRy'
    'ZXNzEi0KB2JpbmRpbmcYDyADKAsyEy5jbG4uR2V0aW5mb0JpbmRpbmdSB2JpbmRpbmcSNwoVd2'
    'FybmluZ19iaXRjb2luZF9zeW5jGBAgASgJSAJSE3dhcm5pbmdCaXRjb2luZFN5bmOIAQESOwoX'
    'd2FybmluZ19saWdodG5pbmdkX3N5bmMYESABKAlIA1IVd2FybmluZ0xpZ2h0bmluZ2RTeW5jiA'
    'EBQggKBl9hbGlhc0IPCg1fb3VyX2ZlYXR1cmVzQhgKFl93YXJuaW5nX2JpdGNvaW5kX3N5bmNC'
    'GgoYX3dhcm5pbmdfbGlnaHRuaW5nZF9zeW5j');

@$core.Deprecated('Use getinfoOur_featuresDescriptor instead')
const GetinfoOur_features$json = {
  '1': 'GetinfoOur_features',
  '2': [
    {'1': 'init', '3': 1, '4': 1, '5': 12, '10': 'init'},
    {'1': 'node', '3': 2, '4': 1, '5': 12, '10': 'node'},
    {'1': 'channel', '3': 3, '4': 1, '5': 12, '10': 'channel'},
    {'1': 'invoice', '3': 4, '4': 1, '5': 12, '10': 'invoice'},
  ],
};

/// Descriptor for `GetinfoOur_features`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getinfoOur_featuresDescriptor = $convert.base64Decode(
    'ChNHZXRpbmZvT3VyX2ZlYXR1cmVzEhIKBGluaXQYASABKAxSBGluaXQSEgoEbm9kZRgCIAEoDF'
    'IEbm9kZRIYCgdjaGFubmVsGAMgASgMUgdjaGFubmVsEhgKB2ludm9pY2UYBCABKAxSB2ludm9p'
    'Y2U=');

@$core.Deprecated('Use getinfoAddressDescriptor instead')
const GetinfoAddress$json = {
  '1': 'GetinfoAddress',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.GetinfoAddress.GetinfoAddressType', '10': 'itemType'},
    {'1': 'port', '3': 2, '4': 1, '5': 13, '10': 'port'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'address', '17': true},
  ],
  '4': [GetinfoAddress_GetinfoAddressType$json],
  '8': [
    {'1': '_address'},
  ],
};

@$core.Deprecated('Use getinfoAddressDescriptor instead')
const GetinfoAddress_GetinfoAddressType$json = {
  '1': 'GetinfoAddressType',
  '2': [
    {'1': 'DNS', '2': 0},
    {'1': 'IPV4', '2': 1},
    {'1': 'IPV6', '2': 2},
    {'1': 'TORV2', '2': 3},
    {'1': 'TORV3', '2': 4},
  ],
};

/// Descriptor for `GetinfoAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getinfoAddressDescriptor = $convert.base64Decode(
    'Cg5HZXRpbmZvQWRkcmVzcxJDCglpdGVtX3R5cGUYASABKA4yJi5jbG4uR2V0aW5mb0FkZHJlc3'
    'MuR2V0aW5mb0FkZHJlc3NUeXBlUghpdGVtVHlwZRISCgRwb3J0GAIgASgNUgRwb3J0Eh0KB2Fk'
    'ZHJlc3MYAyABKAlIAFIHYWRkcmVzc4gBASJHChJHZXRpbmZvQWRkcmVzc1R5cGUSBwoDRE5TEA'
    'ASCAoESVBWNBABEggKBElQVjYQAhIJCgVUT1JWMhADEgkKBVRPUlYzEARCCgoIX2FkZHJlc3M=');

@$core.Deprecated('Use getinfoBindingDescriptor instead')
const GetinfoBinding$json = {
  '1': 'GetinfoBinding',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.GetinfoBinding.GetinfoBindingType', '10': 'itemType'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'address', '17': true},
    {'1': 'port', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'port', '17': true},
    {'1': 'socket', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'socket', '17': true},
    {'1': 'subtype', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'subtype', '17': true},
  ],
  '4': [GetinfoBinding_GetinfoBindingType$json],
  '8': [
    {'1': '_address'},
    {'1': '_port'},
    {'1': '_socket'},
    {'1': '_subtype'},
  ],
};

@$core.Deprecated('Use getinfoBindingDescriptor instead')
const GetinfoBinding_GetinfoBindingType$json = {
  '1': 'GetinfoBindingType',
  '2': [
    {'1': 'LOCAL_SOCKET', '2': 0},
    {'1': 'IPV4', '2': 1},
    {'1': 'IPV6', '2': 2},
    {'1': 'TORV2', '2': 3},
    {'1': 'TORV3', '2': 4},
    {'1': 'WEBSOCKET', '2': 5},
  ],
};

/// Descriptor for `GetinfoBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getinfoBindingDescriptor = $convert.base64Decode(
    'Cg5HZXRpbmZvQmluZGluZxJDCglpdGVtX3R5cGUYASABKA4yJi5jbG4uR2V0aW5mb0JpbmRpbm'
    'cuR2V0aW5mb0JpbmRpbmdUeXBlUghpdGVtVHlwZRIdCgdhZGRyZXNzGAIgASgJSABSB2FkZHJl'
    'c3OIAQESFwoEcG9ydBgDIAEoDUgBUgRwb3J0iAEBEhsKBnNvY2tldBgEIAEoCUgCUgZzb2NrZX'
    'SIAQESHQoHc3VidHlwZRgFIAEoCUgDUgdzdWJ0eXBliAEBIl8KEkdldGluZm9CaW5kaW5nVHlw'
    'ZRIQCgxMT0NBTF9TT0NLRVQQABIICgRJUFY0EAESCAoESVBWNhACEgkKBVRPUlYyEAMSCQoFVE'
    '9SVjMQBBINCglXRUJTT0NLRVQQBUIKCghfYWRkcmVzc0IHCgVfcG9ydEIJCgdfc29ja2V0QgoK'
    'CF9zdWJ0eXBl');

@$core.Deprecated('Use listpeersRequestDescriptor instead')
const ListpeersRequest$json = {
  '1': 'ListpeersRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'id', '17': true},
    {'1': 'level', '3': 2, '4': 1, '5': 14, '6': '.cln.ListpeersRequest.ListpeersLevel', '9': 1, '10': 'level', '17': true},
  ],
  '4': [ListpeersRequest_ListpeersLevel$json],
  '8': [
    {'1': '_id'},
    {'1': '_level'},
  ],
};

@$core.Deprecated('Use listpeersRequestDescriptor instead')
const ListpeersRequest_ListpeersLevel$json = {
  '1': 'ListpeersLevel',
  '2': [
    {'1': 'IO', '2': 0},
    {'1': 'DEBUG', '2': 1},
    {'1': 'INFO', '2': 2},
    {'1': 'UNUSUAL', '2': 3},
    {'1': 'TRACE', '2': 4},
  ],
};

/// Descriptor for `ListpeersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeersRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0cGVlcnNSZXF1ZXN0EhMKAmlkGAEgASgMSABSAmlkiAEBEj8KBWxldmVsGAIgASgOMi'
    'QuY2xuLkxpc3RwZWVyc1JlcXVlc3QuTGlzdHBlZXJzTGV2ZWxIAVIFbGV2ZWyIAQEiRQoOTGlz'
    'dHBlZXJzTGV2ZWwSBgoCSU8QABIJCgVERUJVRxABEggKBElORk8QAhILCgdVTlVTVUFMEAMSCQ'
    'oFVFJBQ0UQBEIFCgNfaWRCCAoGX2xldmVs');

@$core.Deprecated('Use listpeersResponseDescriptor instead')
const ListpeersResponse$json = {
  '1': 'ListpeersResponse',
  '2': [
    {'1': 'peers', '3': 1, '4': 3, '5': 11, '6': '.cln.ListpeersPeers', '10': 'peers'},
  ],
};

/// Descriptor for `ListpeersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeersResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0cGVlcnNSZXNwb25zZRIpCgVwZWVycxgBIAMoCzITLmNsbi5MaXN0cGVlcnNQZWVyc1'
    'IFcGVlcnM=');

@$core.Deprecated('Use listpeersPeersDescriptor instead')
const ListpeersPeers$json = {
  '1': 'ListpeersPeers',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'connected', '3': 2, '4': 1, '5': 8, '10': 'connected'},
    {'1': 'log', '3': 3, '4': 3, '5': 11, '6': '.cln.ListpeersPeersLog', '10': 'log'},
    {'1': 'netaddr', '3': 5, '4': 3, '5': 9, '10': 'netaddr'},
    {'1': 'features', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'features', '17': true},
    {'1': 'remote_addr', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'remoteAddr', '17': true},
    {'1': 'num_channels', '3': 8, '4': 1, '5': 13, '9': 2, '10': 'numChannels', '17': true},
  ],
  '8': [
    {'1': '_features'},
    {'1': '_remote_addr'},
    {'1': '_num_channels'},
  ],
};

/// Descriptor for `ListpeersPeers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeersPeersDescriptor = $convert.base64Decode(
    'Cg5MaXN0cGVlcnNQZWVycxIOCgJpZBgBIAEoDFICaWQSHAoJY29ubmVjdGVkGAIgASgIUgljb2'
    '5uZWN0ZWQSKAoDbG9nGAMgAygLMhYuY2xuLkxpc3RwZWVyc1BlZXJzTG9nUgNsb2cSGAoHbmV0'
    'YWRkchgFIAMoCVIHbmV0YWRkchIfCghmZWF0dXJlcxgGIAEoDEgAUghmZWF0dXJlc4gBARIkCg'
    'tyZW1vdGVfYWRkchgHIAEoCUgBUgpyZW1vdGVBZGRyiAEBEiYKDG51bV9jaGFubmVscxgIIAEo'
    'DUgCUgtudW1DaGFubmVsc4gBAUILCglfZmVhdHVyZXNCDgoMX3JlbW90ZV9hZGRyQg8KDV9udW'
    '1fY2hhbm5lbHM=');

@$core.Deprecated('Use listpeersPeersLogDescriptor instead')
const ListpeersPeersLog$json = {
  '1': 'ListpeersPeersLog',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.ListpeersPeersLog.ListpeersPeersLogType', '10': 'itemType'},
    {'1': 'num_skipped', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'numSkipped', '17': true},
    {'1': 'time', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'time', '17': true},
    {'1': 'source', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'source', '17': true},
    {'1': 'log', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'log', '17': true},
    {'1': 'node_id', '3': 6, '4': 1, '5': 12, '9': 4, '10': 'nodeId', '17': true},
    {'1': 'data', '3': 7, '4': 1, '5': 12, '9': 5, '10': 'data', '17': true},
  ],
  '4': [ListpeersPeersLog_ListpeersPeersLogType$json],
  '8': [
    {'1': '_num_skipped'},
    {'1': '_time'},
    {'1': '_source'},
    {'1': '_log'},
    {'1': '_node_id'},
    {'1': '_data'},
  ],
};

@$core.Deprecated('Use listpeersPeersLogDescriptor instead')
const ListpeersPeersLog_ListpeersPeersLogType$json = {
  '1': 'ListpeersPeersLogType',
  '2': [
    {'1': 'SKIPPED', '2': 0},
    {'1': 'BROKEN', '2': 1},
    {'1': 'UNUSUAL', '2': 2},
    {'1': 'INFO', '2': 3},
    {'1': 'DEBUG', '2': 4},
    {'1': 'IO_IN', '2': 5},
    {'1': 'IO_OUT', '2': 6},
    {'1': 'TRACE', '2': 7},
  ],
};

/// Descriptor for `ListpeersPeersLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeersPeersLogDescriptor = $convert.base64Decode(
    'ChFMaXN0cGVlcnNQZWVyc0xvZxJJCglpdGVtX3R5cGUYASABKA4yLC5jbG4uTGlzdHBlZXJzUG'
    'VlcnNMb2cuTGlzdHBlZXJzUGVlcnNMb2dUeXBlUghpdGVtVHlwZRIkCgtudW1fc2tpcHBlZBgC'
    'IAEoDUgAUgpudW1Ta2lwcGVkiAEBEhcKBHRpbWUYAyABKAlIAVIEdGltZYgBARIbCgZzb3VyY2'
    'UYBCABKAlIAlIGc291cmNliAEBEhUKA2xvZxgFIAEoCUgDUgNsb2eIAQESHAoHbm9kZV9pZBgG'
    'IAEoDEgEUgZub2RlSWSIAQESFwoEZGF0YRgHIAEoDEgFUgRkYXRhiAEBInQKFUxpc3RwZWVyc1'
    'BlZXJzTG9nVHlwZRILCgdTS0lQUEVEEAASCgoGQlJPS0VOEAESCwoHVU5VU1VBTBACEggKBElO'
    'Rk8QAxIJCgVERUJVRxAEEgkKBUlPX0lOEAUSCgoGSU9fT1VUEAYSCQoFVFJBQ0UQB0IOCgxfbn'
    'VtX3NraXBwZWRCBwoFX3RpbWVCCQoHX3NvdXJjZUIGCgRfbG9nQgoKCF9ub2RlX2lkQgcKBV9k'
    'YXRh');

@$core.Deprecated('Use listfundsRequestDescriptor instead')
const ListfundsRequest$json = {
  '1': 'ListfundsRequest',
  '2': [
    {'1': 'spent', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'spent', '17': true},
  ],
  '8': [
    {'1': '_spent'},
  ],
};

/// Descriptor for `ListfundsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listfundsRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0ZnVuZHNSZXF1ZXN0EhkKBXNwZW50GAEgASgISABSBXNwZW50iAEBQggKBl9zcGVudA'
    '==');

@$core.Deprecated('Use listfundsResponseDescriptor instead')
const ListfundsResponse$json = {
  '1': 'ListfundsResponse',
  '2': [
    {'1': 'outputs', '3': 1, '4': 3, '5': 11, '6': '.cln.ListfundsOutputs', '10': 'outputs'},
    {'1': 'channels', '3': 2, '4': 3, '5': 11, '6': '.cln.ListfundsChannels', '10': 'channels'},
  ],
};

/// Descriptor for `ListfundsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listfundsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0ZnVuZHNSZXNwb25zZRIvCgdvdXRwdXRzGAEgAygLMhUuY2xuLkxpc3RmdW5kc091dH'
    'B1dHNSB291dHB1dHMSMgoIY2hhbm5lbHMYAiADKAsyFi5jbG4uTGlzdGZ1bmRzQ2hhbm5lbHNS'
    'CGNoYW5uZWxz');

@$core.Deprecated('Use listfundsOutputsDescriptor instead')
const ListfundsOutputs$json = {
  '1': 'ListfundsOutputs',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'output', '3': 2, '4': 1, '5': 13, '10': 'output'},
    {'1': 'amount_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'scriptpubkey', '3': 4, '4': 1, '5': 12, '10': 'scriptpubkey'},
    {'1': 'address', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'address', '17': true},
    {'1': 'redeemscript', '3': 6, '4': 1, '5': 12, '9': 1, '10': 'redeemscript', '17': true},
    {'1': 'status', '3': 7, '4': 1, '5': 14, '6': '.cln.ListfundsOutputs.ListfundsOutputsStatus', '10': 'status'},
    {'1': 'blockheight', '3': 8, '4': 1, '5': 13, '9': 2, '10': 'blockheight', '17': true},
    {'1': 'reserved', '3': 9, '4': 1, '5': 8, '10': 'reserved'},
    {'1': 'reserved_to_block', '3': 10, '4': 1, '5': 13, '9': 3, '10': 'reservedToBlock', '17': true},
  ],
  '4': [ListfundsOutputs_ListfundsOutputsStatus$json],
  '8': [
    {'1': '_address'},
    {'1': '_redeemscript'},
    {'1': '_blockheight'},
    {'1': '_reserved_to_block'},
  ],
};

@$core.Deprecated('Use listfundsOutputsDescriptor instead')
const ListfundsOutputs_ListfundsOutputsStatus$json = {
  '1': 'ListfundsOutputsStatus',
  '2': [
    {'1': 'UNCONFIRMED', '2': 0},
    {'1': 'CONFIRMED', '2': 1},
    {'1': 'SPENT', '2': 2},
    {'1': 'IMMATURE', '2': 3},
  ],
};

/// Descriptor for `ListfundsOutputs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listfundsOutputsDescriptor = $convert.base64Decode(
    'ChBMaXN0ZnVuZHNPdXRwdXRzEhIKBHR4aWQYASABKAxSBHR4aWQSFgoGb3V0cHV0GAIgASgNUg'
    'ZvdXRwdXQSLAoLYW1vdW50X21zYXQYAyABKAsyCy5jbG4uQW1vdW50UgphbW91bnRNc2F0EiIK'
    'DHNjcmlwdHB1YmtleRgEIAEoDFIMc2NyaXB0cHVia2V5Eh0KB2FkZHJlc3MYBSABKAlIAFIHYW'
    'RkcmVzc4gBARInCgxyZWRlZW1zY3JpcHQYBiABKAxIAVIMcmVkZWVtc2NyaXB0iAEBEkQKBnN0'
    'YXR1cxgHIAEoDjIsLmNsbi5MaXN0ZnVuZHNPdXRwdXRzLkxpc3RmdW5kc091dHB1dHNTdGF0dX'
    'NSBnN0YXR1cxIlCgtibG9ja2hlaWdodBgIIAEoDUgCUgtibG9ja2hlaWdodIgBARIaCghyZXNl'
    'cnZlZBgJIAEoCFIIcmVzZXJ2ZWQSLwoRcmVzZXJ2ZWRfdG9fYmxvY2sYCiABKA1IA1IPcmVzZX'
    'J2ZWRUb0Jsb2NriAEBIlEKFkxpc3RmdW5kc091dHB1dHNTdGF0dXMSDwoLVU5DT05GSVJNRUQQ'
    'ABINCglDT05GSVJNRUQQARIJCgVTUEVOVBACEgwKCElNTUFUVVJFEANCCgoIX2FkZHJlc3NCDw'
    'oNX3JlZGVlbXNjcmlwdEIOCgxfYmxvY2toZWlnaHRCFAoSX3Jlc2VydmVkX3RvX2Jsb2Nr');

@$core.Deprecated('Use listfundsChannelsDescriptor instead')
const ListfundsChannels$json = {
  '1': 'ListfundsChannels',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 12, '10': 'peerId'},
    {'1': 'our_amount_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'ourAmountMsat'},
    {'1': 'amount_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'funding_txid', '3': 4, '4': 1, '5': 12, '10': 'fundingTxid'},
    {'1': 'funding_output', '3': 5, '4': 1, '5': 13, '10': 'fundingOutput'},
    {'1': 'connected', '3': 6, '4': 1, '5': 8, '10': 'connected'},
    {'1': 'state', '3': 7, '4': 1, '5': 14, '6': '.cln.ChannelState', '10': 'state'},
    {'1': 'short_channel_id', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'shortChannelId', '17': true},
    {'1': 'channel_id', '3': 9, '4': 1, '5': 12, '9': 1, '10': 'channelId', '17': true},
  ],
  '8': [
    {'1': '_short_channel_id'},
    {'1': '_channel_id'},
  ],
};

/// Descriptor for `ListfundsChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listfundsChannelsDescriptor = $convert.base64Decode(
    'ChFMaXN0ZnVuZHNDaGFubmVscxIXCgdwZWVyX2lkGAEgASgMUgZwZWVySWQSMwoPb3VyX2Ftb3'
    'VudF9tc2F0GAIgASgLMgsuY2xuLkFtb3VudFINb3VyQW1vdW50TXNhdBIsCgthbW91bnRfbXNh'
    'dBgDIAEoCzILLmNsbi5BbW91bnRSCmFtb3VudE1zYXQSIQoMZnVuZGluZ190eGlkGAQgASgMUg'
    'tmdW5kaW5nVHhpZBIlCg5mdW5kaW5nX291dHB1dBgFIAEoDVINZnVuZGluZ091dHB1dBIcCglj'
    'b25uZWN0ZWQYBiABKAhSCWNvbm5lY3RlZBInCgVzdGF0ZRgHIAEoDjIRLmNsbi5DaGFubmVsU3'
    'RhdGVSBXN0YXRlEi0KEHNob3J0X2NoYW5uZWxfaWQYCCABKAlIAFIOc2hvcnRDaGFubmVsSWSI'
    'AQESIgoKY2hhbm5lbF9pZBgJIAEoDEgBUgljaGFubmVsSWSIAQFCEwoRX3Nob3J0X2NoYW5uZW'
    'xfaWRCDQoLX2NoYW5uZWxfaWQ=');

@$core.Deprecated('Use sendpayRequestDescriptor instead')
const SendpayRequest$json = {
  '1': 'SendpayRequest',
  '2': [
    {'1': 'route', '3': 1, '4': 3, '5': 11, '6': '.cln.SendpayRoute', '10': 'route'},
    {'1': 'payment_hash', '3': 2, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'label', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
    {'1': 'bolt11', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'bolt11', '17': true},
    {'1': 'payment_secret', '3': 6, '4': 1, '5': 12, '9': 2, '10': 'paymentSecret', '17': true},
    {'1': 'partid', '3': 7, '4': 1, '5': 4, '9': 3, '10': 'partid', '17': true},
    {'1': 'groupid', '3': 9, '4': 1, '5': 4, '9': 4, '10': 'groupid', '17': true},
    {'1': 'amount_msat', '3': 10, '4': 1, '5': 11, '6': '.cln.Amount', '9': 5, '10': 'amountMsat', '17': true},
    {'1': 'localinvreqid', '3': 11, '4': 1, '5': 12, '9': 6, '10': 'localinvreqid', '17': true},
    {'1': 'payment_metadata', '3': 12, '4': 1, '5': 12, '9': 7, '10': 'paymentMetadata', '17': true},
    {'1': 'description', '3': 13, '4': 1, '5': 9, '9': 8, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_label'},
    {'1': '_bolt11'},
    {'1': '_payment_secret'},
    {'1': '_partid'},
    {'1': '_groupid'},
    {'1': '_amount_msat'},
    {'1': '_localinvreqid'},
    {'1': '_payment_metadata'},
    {'1': '_description'},
  ],
};

/// Descriptor for `SendpayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendpayRequestDescriptor = $convert.base64Decode(
    'Cg5TZW5kcGF5UmVxdWVzdBInCgVyb3V0ZRgBIAMoCzIRLmNsbi5TZW5kcGF5Um91dGVSBXJvdX'
    'RlEiEKDHBheW1lbnRfaGFzaBgCIAEoDFILcGF5bWVudEhhc2gSGQoFbGFiZWwYAyABKAlIAFIF'
    'bGFiZWyIAQESGwoGYm9sdDExGAUgASgJSAFSBmJvbHQxMYgBARIqCg5wYXltZW50X3NlY3JldB'
    'gGIAEoDEgCUg1wYXltZW50U2VjcmV0iAEBEhsKBnBhcnRpZBgHIAEoBEgDUgZwYXJ0aWSIAQES'
    'HQoHZ3JvdXBpZBgJIAEoBEgEUgdncm91cGlkiAEBEjEKC2Ftb3VudF9tc2F0GAogASgLMgsuY2'
    'xuLkFtb3VudEgFUgphbW91bnRNc2F0iAEBEikKDWxvY2FsaW52cmVxaWQYCyABKAxIBlINbG9j'
    'YWxpbnZyZXFpZIgBARIuChBwYXltZW50X21ldGFkYXRhGAwgASgMSAdSD3BheW1lbnRNZXRhZG'
    'F0YYgBARIlCgtkZXNjcmlwdGlvbhgNIAEoCUgIUgtkZXNjcmlwdGlvbogBAUIICgZfbGFiZWxC'
    'CQoHX2JvbHQxMUIRCg9fcGF5bWVudF9zZWNyZXRCCQoHX3BhcnRpZEIKCghfZ3JvdXBpZEIOCg'
    'xfYW1vdW50X21zYXRCEAoOX2xvY2FsaW52cmVxaWRCEwoRX3BheW1lbnRfbWV0YWRhdGFCDgoM'
    'X2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use sendpayResponseDescriptor instead')
const SendpayResponse$json = {
  '1': 'SendpayResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'groupid', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'groupid', '17': true},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.cln.SendpayResponse.SendpayStatus', '10': 'status'},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'amountMsat', '17': true},
    {'1': 'destination', '3': 6, '4': 1, '5': 12, '9': 2, '10': 'destination', '17': true},
    {'1': 'created_at', '3': 7, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'amount_sent_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountSentMsat'},
    {'1': 'label', '3': 9, '4': 1, '5': 9, '9': 3, '10': 'label', '17': true},
    {'1': 'partid', '3': 10, '4': 1, '5': 4, '9': 4, '10': 'partid', '17': true},
    {'1': 'bolt11', '3': 11, '4': 1, '5': 9, '9': 5, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 12, '4': 1, '5': 9, '9': 6, '10': 'bolt12', '17': true},
    {'1': 'payment_preimage', '3': 13, '4': 1, '5': 12, '9': 7, '10': 'paymentPreimage', '17': true},
    {'1': 'message', '3': 14, '4': 1, '5': 9, '9': 8, '10': 'message', '17': true},
    {'1': 'completed_at', '3': 15, '4': 1, '5': 4, '9': 9, '10': 'completedAt', '17': true},
    {'1': 'created_index', '3': 16, '4': 1, '5': 4, '9': 10, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 17, '4': 1, '5': 4, '9': 11, '10': 'updatedIndex', '17': true},
  ],
  '4': [SendpayResponse_SendpayStatus$json],
  '8': [
    {'1': '_groupid'},
    {'1': '_amount_msat'},
    {'1': '_destination'},
    {'1': '_label'},
    {'1': '_partid'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_payment_preimage'},
    {'1': '_message'},
    {'1': '_completed_at'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
  ],
};

@$core.Deprecated('Use sendpayResponseDescriptor instead')
const SendpayResponse_SendpayStatus$json = {
  '1': 'SendpayStatus',
  '2': [
    {'1': 'PENDING', '2': 0},
    {'1': 'COMPLETE', '2': 1},
  ],
};

/// Descriptor for `SendpayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendpayResponseDescriptor = $convert.base64Decode(
    'Cg9TZW5kcGF5UmVzcG9uc2USDgoCaWQYASABKARSAmlkEh0KB2dyb3VwaWQYAiABKARIAFIHZ3'
    'JvdXBpZIgBARIhCgxwYXltZW50X2hhc2gYAyABKAxSC3BheW1lbnRIYXNoEjoKBnN0YXR1cxgE'
    'IAEoDjIiLmNsbi5TZW5kcGF5UmVzcG9uc2UuU2VuZHBheVN0YXR1c1IGc3RhdHVzEjEKC2Ftb3'
    'VudF9tc2F0GAUgASgLMgsuY2xuLkFtb3VudEgBUgphbW91bnRNc2F0iAEBEiUKC2Rlc3RpbmF0'
    'aW9uGAYgASgMSAJSC2Rlc3RpbmF0aW9uiAEBEh0KCmNyZWF0ZWRfYXQYByABKARSCWNyZWF0ZW'
    'RBdBI1ChBhbW91bnRfc2VudF9tc2F0GAggASgLMgsuY2xuLkFtb3VudFIOYW1vdW50U2VudE1z'
    'YXQSGQoFbGFiZWwYCSABKAlIA1IFbGFiZWyIAQESGwoGcGFydGlkGAogASgESARSBnBhcnRpZI'
    'gBARIbCgZib2x0MTEYCyABKAlIBVIGYm9sdDExiAEBEhsKBmJvbHQxMhgMIAEoCUgGUgZib2x0'
    'MTKIAQESLgoQcGF5bWVudF9wcmVpbWFnZRgNIAEoDEgHUg9wYXltZW50UHJlaW1hZ2WIAQESHQ'
    'oHbWVzc2FnZRgOIAEoCUgIUgdtZXNzYWdliAEBEiYKDGNvbXBsZXRlZF9hdBgPIAEoBEgJUgtj'
    'b21wbGV0ZWRBdIgBARIoCg1jcmVhdGVkX2luZGV4GBAgASgESApSDGNyZWF0ZWRJbmRleIgBAR'
    'IoCg11cGRhdGVkX2luZGV4GBEgASgESAtSDHVwZGF0ZWRJbmRleIgBASIqCg1TZW5kcGF5U3Rh'
    'dHVzEgsKB1BFTkRJTkcQABIMCghDT01QTEVURRABQgoKCF9ncm91cGlkQg4KDF9hbW91bnRfbX'
    'NhdEIOCgxfZGVzdGluYXRpb25CCAoGX2xhYmVsQgkKB19wYXJ0aWRCCQoHX2JvbHQxMUIJCgdf'
    'Ym9sdDEyQhMKEV9wYXltZW50X3ByZWltYWdlQgoKCF9tZXNzYWdlQg8KDV9jb21wbGV0ZWRfYX'
    'RCEAoOX2NyZWF0ZWRfaW5kZXhCEAoOX3VwZGF0ZWRfaW5kZXg=');

@$core.Deprecated('Use sendpayRouteDescriptor instead')
const SendpayRoute$json = {
  '1': 'SendpayRoute',
  '2': [
    {'1': 'id', '3': 2, '4': 1, '5': 12, '10': 'id'},
    {'1': 'delay', '3': 3, '4': 1, '5': 13, '10': 'delay'},
    {'1': 'channel', '3': 4, '4': 1, '5': 9, '10': 'channel'},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
  ],
};

/// Descriptor for `SendpayRoute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendpayRouteDescriptor = $convert.base64Decode(
    'CgxTZW5kcGF5Um91dGUSDgoCaWQYAiABKAxSAmlkEhQKBWRlbGF5GAMgASgNUgVkZWxheRIYCg'
    'djaGFubmVsGAQgASgJUgdjaGFubmVsEiwKC2Ftb3VudF9tc2F0GAUgASgLMgsuY2xuLkFtb3Vu'
    'dFIKYW1vdW50TXNhdA==');

@$core.Deprecated('Use listchannelsRequestDescriptor instead')
const ListchannelsRequest$json = {
  '1': 'ListchannelsRequest',
  '2': [
    {'1': 'short_channel_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'shortChannelId', '17': true},
    {'1': 'source', '3': 2, '4': 1, '5': 12, '9': 1, '10': 'source', '17': true},
    {'1': 'destination', '3': 3, '4': 1, '5': 12, '9': 2, '10': 'destination', '17': true},
  ],
  '8': [
    {'1': '_short_channel_id'},
    {'1': '_source'},
    {'1': '_destination'},
  ],
};

/// Descriptor for `ListchannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listchannelsRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0Y2hhbm5lbHNSZXF1ZXN0Ei0KEHNob3J0X2NoYW5uZWxfaWQYASABKAlIAFIOc2hvcn'
    'RDaGFubmVsSWSIAQESGwoGc291cmNlGAIgASgMSAFSBnNvdXJjZYgBARIlCgtkZXN0aW5hdGlv'
    'bhgDIAEoDEgCUgtkZXN0aW5hdGlvbogBAUITChFfc2hvcnRfY2hhbm5lbF9pZEIJCgdfc291cm'
    'NlQg4KDF9kZXN0aW5hdGlvbg==');

@$core.Deprecated('Use listchannelsResponseDescriptor instead')
const ListchannelsResponse$json = {
  '1': 'ListchannelsResponse',
  '2': [
    {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.cln.ListchannelsChannels', '10': 'channels'},
  ],
};

/// Descriptor for `ListchannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listchannelsResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0Y2hhbm5lbHNSZXNwb25zZRI1CghjaGFubmVscxgBIAMoCzIZLmNsbi5MaXN0Y2hhbm'
    '5lbHNDaGFubmVsc1IIY2hhbm5lbHM=');

@$core.Deprecated('Use listchannelsChannelsDescriptor instead')
const ListchannelsChannels$json = {
  '1': 'ListchannelsChannels',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 12, '10': 'source'},
    {'1': 'destination', '3': 2, '4': 1, '5': 12, '10': 'destination'},
    {'1': 'short_channel_id', '3': 3, '4': 1, '5': 9, '10': 'shortChannelId'},
    {'1': 'public', '3': 4, '4': 1, '5': 8, '10': 'public'},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'message_flags', '3': 6, '4': 1, '5': 13, '10': 'messageFlags'},
    {'1': 'channel_flags', '3': 7, '4': 1, '5': 13, '10': 'channelFlags'},
    {'1': 'active', '3': 8, '4': 1, '5': 8, '10': 'active'},
    {'1': 'last_update', '3': 9, '4': 1, '5': 13, '10': 'lastUpdate'},
    {'1': 'base_fee_millisatoshi', '3': 10, '4': 1, '5': 13, '10': 'baseFeeMillisatoshi'},
    {'1': 'fee_per_millionth', '3': 11, '4': 1, '5': 13, '10': 'feePerMillionth'},
    {'1': 'delay', '3': 12, '4': 1, '5': 13, '10': 'delay'},
    {'1': 'htlc_minimum_msat', '3': 13, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'htlcMinimumMsat'},
    {'1': 'htlc_maximum_msat', '3': 14, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'htlcMaximumMsat', '17': true},
    {'1': 'features', '3': 15, '4': 1, '5': 12, '10': 'features'},
    {'1': 'direction', '3': 16, '4': 1, '5': 13, '10': 'direction'},
  ],
  '8': [
    {'1': '_htlc_maximum_msat'},
  ],
};

/// Descriptor for `ListchannelsChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listchannelsChannelsDescriptor = $convert.base64Decode(
    'ChRMaXN0Y2hhbm5lbHNDaGFubmVscxIWCgZzb3VyY2UYASABKAxSBnNvdXJjZRIgCgtkZXN0aW'
    '5hdGlvbhgCIAEoDFILZGVzdGluYXRpb24SKAoQc2hvcnRfY2hhbm5lbF9pZBgDIAEoCVIOc2hv'
    'cnRDaGFubmVsSWQSFgoGcHVibGljGAQgASgIUgZwdWJsaWMSLAoLYW1vdW50X21zYXQYBSABKA'
    'syCy5jbG4uQW1vdW50UgphbW91bnRNc2F0EiMKDW1lc3NhZ2VfZmxhZ3MYBiABKA1SDG1lc3Nh'
    'Z2VGbGFncxIjCg1jaGFubmVsX2ZsYWdzGAcgASgNUgxjaGFubmVsRmxhZ3MSFgoGYWN0aXZlGA'
    'ggASgIUgZhY3RpdmUSHwoLbGFzdF91cGRhdGUYCSABKA1SCmxhc3RVcGRhdGUSMgoVYmFzZV9m'
    'ZWVfbWlsbGlzYXRvc2hpGAogASgNUhNiYXNlRmVlTWlsbGlzYXRvc2hpEioKEWZlZV9wZXJfbW'
    'lsbGlvbnRoGAsgASgNUg9mZWVQZXJNaWxsaW9udGgSFAoFZGVsYXkYDCABKA1SBWRlbGF5EjcK'
    'EWh0bGNfbWluaW11bV9tc2F0GA0gASgLMgsuY2xuLkFtb3VudFIPaHRsY01pbmltdW1Nc2F0Ej'
    'wKEWh0bGNfbWF4aW11bV9tc2F0GA4gASgLMgsuY2xuLkFtb3VudEgAUg9odGxjTWF4aW11bU1z'
    'YXSIAQESGgoIZmVhdHVyZXMYDyABKAxSCGZlYXR1cmVzEhwKCWRpcmVjdGlvbhgQIAEoDVIJZG'
    'lyZWN0aW9uQhQKEl9odGxjX21heGltdW1fbXNhdA==');

@$core.Deprecated('Use addgossipRequestDescriptor instead')
const AddgossipRequest$json = {
  '1': 'AddgossipRequest',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 12, '10': 'message'},
  ],
};

/// Descriptor for `AddgossipRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addgossipRequestDescriptor = $convert.base64Decode(
    'ChBBZGRnb3NzaXBSZXF1ZXN0EhgKB21lc3NhZ2UYASABKAxSB21lc3NhZ2U=');

@$core.Deprecated('Use addgossipResponseDescriptor instead')
const AddgossipResponse$json = {
  '1': 'AddgossipResponse',
};

/// Descriptor for `AddgossipResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addgossipResponseDescriptor = $convert.base64Decode(
    'ChFBZGRnb3NzaXBSZXNwb25zZQ==');

@$core.Deprecated('Use addpsbtoutputRequestDescriptor instead')
const AddpsbtoutputRequest$json = {
  '1': 'AddpsbtoutputRequest',
  '2': [
    {'1': 'satoshi', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'satoshi'},
    {'1': 'locktime', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'locktime', '17': true},
    {'1': 'initialpsbt', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'initialpsbt', '17': true},
    {'1': 'destination', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'destination', '17': true},
  ],
  '8': [
    {'1': '_locktime'},
    {'1': '_initialpsbt'},
    {'1': '_destination'},
  ],
};

/// Descriptor for `AddpsbtoutputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addpsbtoutputRequestDescriptor = $convert.base64Decode(
    'ChRBZGRwc2J0b3V0cHV0UmVxdWVzdBIlCgdzYXRvc2hpGAEgASgLMgsuY2xuLkFtb3VudFIHc2'
    'F0b3NoaRIfCghsb2NrdGltZRgCIAEoDUgAUghsb2NrdGltZYgBARIlCgtpbml0aWFscHNidBgD'
    'IAEoCUgBUgtpbml0aWFscHNidIgBARIlCgtkZXN0aW5hdGlvbhgEIAEoCUgCUgtkZXN0aW5hdG'
    'lvbogBAUILCglfbG9ja3RpbWVCDgoMX2luaXRpYWxwc2J0Qg4KDF9kZXN0aW5hdGlvbg==');

@$core.Deprecated('Use addpsbtoutputResponseDescriptor instead')
const AddpsbtoutputResponse$json = {
  '1': 'AddpsbtoutputResponse',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'estimated_added_weight', '3': 2, '4': 1, '5': 13, '10': 'estimatedAddedWeight'},
    {'1': 'outnum', '3': 3, '4': 1, '5': 13, '10': 'outnum'},
  ],
};

/// Descriptor for `AddpsbtoutputResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addpsbtoutputResponseDescriptor = $convert.base64Decode(
    'ChVBZGRwc2J0b3V0cHV0UmVzcG9uc2USEgoEcHNidBgBIAEoCVIEcHNidBI0ChZlc3RpbWF0ZW'
    'RfYWRkZWRfd2VpZ2h0GAIgASgNUhRlc3RpbWF0ZWRBZGRlZFdlaWdodBIWCgZvdXRudW0YAyAB'
    'KA1SBm91dG51bQ==');

@$core.Deprecated('Use autocleanonceRequestDescriptor instead')
const AutocleanonceRequest$json = {
  '1': 'AutocleanonceRequest',
  '2': [
    {'1': 'subsystem', '3': 1, '4': 1, '5': 14, '6': '.cln.AutocleanSubsystem', '10': 'subsystem'},
    {'1': 'age', '3': 2, '4': 1, '5': 4, '10': 'age'},
  ],
};

/// Descriptor for `AutocleanonceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceRequestDescriptor = $convert.base64Decode(
    'ChRBdXRvY2xlYW5vbmNlUmVxdWVzdBI1CglzdWJzeXN0ZW0YASABKA4yFy5jbG4uQXV0b2NsZW'
    'FuU3Vic3lzdGVtUglzdWJzeXN0ZW0SEAoDYWdlGAIgASgEUgNhZ2U=');

@$core.Deprecated('Use autocleanonceResponseDescriptor instead')
const AutocleanonceResponse$json = {
  '1': 'AutocleanonceResponse',
  '2': [
    {'1': 'autoclean', '3': 1, '4': 1, '5': 11, '6': '.cln.AutocleanonceAutoclean', '10': 'autoclean'},
  ],
};

/// Descriptor for `AutocleanonceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceResponseDescriptor = $convert.base64Decode(
    'ChVBdXRvY2xlYW5vbmNlUmVzcG9uc2USOQoJYXV0b2NsZWFuGAEgASgLMhsuY2xuLkF1dG9jbG'
    'Vhbm9uY2VBdXRvY2xlYW5SCWF1dG9jbGVhbg==');

@$core.Deprecated('Use autocleanonceAutocleanDescriptor instead')
const AutocleanonceAutoclean$json = {
  '1': 'AutocleanonceAutoclean',
  '2': [
    {'1': 'succeededforwards', '3': 1, '4': 1, '5': 11, '6': '.cln.AutocleanonceAutocleanSucceededforwards', '9': 0, '10': 'succeededforwards', '17': true},
    {'1': 'failedforwards', '3': 2, '4': 1, '5': 11, '6': '.cln.AutocleanonceAutocleanFailedforwards', '9': 1, '10': 'failedforwards', '17': true},
    {'1': 'succeededpays', '3': 3, '4': 1, '5': 11, '6': '.cln.AutocleanonceAutocleanSucceededpays', '9': 2, '10': 'succeededpays', '17': true},
    {'1': 'failedpays', '3': 4, '4': 1, '5': 11, '6': '.cln.AutocleanonceAutocleanFailedpays', '9': 3, '10': 'failedpays', '17': true},
    {'1': 'paidinvoices', '3': 5, '4': 1, '5': 11, '6': '.cln.AutocleanonceAutocleanPaidinvoices', '9': 4, '10': 'paidinvoices', '17': true},
    {'1': 'expiredinvoices', '3': 6, '4': 1, '5': 11, '6': '.cln.AutocleanonceAutocleanExpiredinvoices', '9': 5, '10': 'expiredinvoices', '17': true},
  ],
  '8': [
    {'1': '_succeededforwards'},
    {'1': '_failedforwards'},
    {'1': '_succeededpays'},
    {'1': '_failedpays'},
    {'1': '_paidinvoices'},
    {'1': '_expiredinvoices'},
  ],
};

/// Descriptor for `AutocleanonceAutoclean`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceAutocleanDescriptor = $convert.base64Decode(
    'ChZBdXRvY2xlYW5vbmNlQXV0b2NsZWFuEl8KEXN1Y2NlZWRlZGZvcndhcmRzGAEgASgLMiwuY2'
    'xuLkF1dG9jbGVhbm9uY2VBdXRvY2xlYW5TdWNjZWVkZWRmb3J3YXJkc0gAUhFzdWNjZWVkZWRm'
    'b3J3YXJkc4gBARJWCg5mYWlsZWRmb3J3YXJkcxgCIAEoCzIpLmNsbi5BdXRvY2xlYW5vbmNlQX'
    'V0b2NsZWFuRmFpbGVkZm9yd2FyZHNIAVIOZmFpbGVkZm9yd2FyZHOIAQESUwoNc3VjY2VlZGVk'
    'cGF5cxgDIAEoCzIoLmNsbi5BdXRvY2xlYW5vbmNlQXV0b2NsZWFuU3VjY2VlZGVkcGF5c0gCUg'
    '1zdWNjZWVkZWRwYXlziAEBEkoKCmZhaWxlZHBheXMYBCABKAsyJS5jbG4uQXV0b2NsZWFub25j'
    'ZUF1dG9jbGVhbkZhaWxlZHBheXNIA1IKZmFpbGVkcGF5c4gBARJQCgxwYWlkaW52b2ljZXMYBS'
    'ABKAsyJy5jbG4uQXV0b2NsZWFub25jZUF1dG9jbGVhblBhaWRpbnZvaWNlc0gEUgxwYWlkaW52'
    'b2ljZXOIAQESWQoPZXhwaXJlZGludm9pY2VzGAYgASgLMiouY2xuLkF1dG9jbGVhbm9uY2VBdX'
    'RvY2xlYW5FeHBpcmVkaW52b2ljZXNIBVIPZXhwaXJlZGludm9pY2VziAEBQhQKEl9zdWNjZWVk'
    'ZWRmb3J3YXJkc0IRCg9fZmFpbGVkZm9yd2FyZHNCEAoOX3N1Y2NlZWRlZHBheXNCDQoLX2ZhaW'
    'xlZHBheXNCDwoNX3BhaWRpbnZvaWNlc0ISChBfZXhwaXJlZGludm9pY2Vz');

@$core.Deprecated('Use autocleanonceAutocleanSucceededforwardsDescriptor instead')
const AutocleanonceAutocleanSucceededforwards$json = {
  '1': 'AutocleanonceAutocleanSucceededforwards',
  '2': [
    {'1': 'cleaned', '3': 1, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'uncleaned', '3': 2, '4': 1, '5': 4, '10': 'uncleaned'},
  ],
};

/// Descriptor for `AutocleanonceAutocleanSucceededforwards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceAutocleanSucceededforwardsDescriptor = $convert.base64Decode(
    'CidBdXRvY2xlYW5vbmNlQXV0b2NsZWFuU3VjY2VlZGVkZm9yd2FyZHMSGAoHY2xlYW5lZBgBIA'
    'EoBFIHY2xlYW5lZBIcCgl1bmNsZWFuZWQYAiABKARSCXVuY2xlYW5lZA==');

@$core.Deprecated('Use autocleanonceAutocleanFailedforwardsDescriptor instead')
const AutocleanonceAutocleanFailedforwards$json = {
  '1': 'AutocleanonceAutocleanFailedforwards',
  '2': [
    {'1': 'cleaned', '3': 1, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'uncleaned', '3': 2, '4': 1, '5': 4, '10': 'uncleaned'},
  ],
};

/// Descriptor for `AutocleanonceAutocleanFailedforwards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceAutocleanFailedforwardsDescriptor = $convert.base64Decode(
    'CiRBdXRvY2xlYW5vbmNlQXV0b2NsZWFuRmFpbGVkZm9yd2FyZHMSGAoHY2xlYW5lZBgBIAEoBF'
    'IHY2xlYW5lZBIcCgl1bmNsZWFuZWQYAiABKARSCXVuY2xlYW5lZA==');

@$core.Deprecated('Use autocleanonceAutocleanSucceededpaysDescriptor instead')
const AutocleanonceAutocleanSucceededpays$json = {
  '1': 'AutocleanonceAutocleanSucceededpays',
  '2': [
    {'1': 'cleaned', '3': 1, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'uncleaned', '3': 2, '4': 1, '5': 4, '10': 'uncleaned'},
  ],
};

/// Descriptor for `AutocleanonceAutocleanSucceededpays`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceAutocleanSucceededpaysDescriptor = $convert.base64Decode(
    'CiNBdXRvY2xlYW5vbmNlQXV0b2NsZWFuU3VjY2VlZGVkcGF5cxIYCgdjbGVhbmVkGAEgASgEUg'
    'djbGVhbmVkEhwKCXVuY2xlYW5lZBgCIAEoBFIJdW5jbGVhbmVk');

@$core.Deprecated('Use autocleanonceAutocleanFailedpaysDescriptor instead')
const AutocleanonceAutocleanFailedpays$json = {
  '1': 'AutocleanonceAutocleanFailedpays',
  '2': [
    {'1': 'cleaned', '3': 1, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'uncleaned', '3': 2, '4': 1, '5': 4, '10': 'uncleaned'},
  ],
};

/// Descriptor for `AutocleanonceAutocleanFailedpays`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceAutocleanFailedpaysDescriptor = $convert.base64Decode(
    'CiBBdXRvY2xlYW5vbmNlQXV0b2NsZWFuRmFpbGVkcGF5cxIYCgdjbGVhbmVkGAEgASgEUgdjbG'
    'VhbmVkEhwKCXVuY2xlYW5lZBgCIAEoBFIJdW5jbGVhbmVk');

@$core.Deprecated('Use autocleanonceAutocleanPaidinvoicesDescriptor instead')
const AutocleanonceAutocleanPaidinvoices$json = {
  '1': 'AutocleanonceAutocleanPaidinvoices',
  '2': [
    {'1': 'cleaned', '3': 1, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'uncleaned', '3': 2, '4': 1, '5': 4, '10': 'uncleaned'},
  ],
};

/// Descriptor for `AutocleanonceAutocleanPaidinvoices`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceAutocleanPaidinvoicesDescriptor = $convert.base64Decode(
    'CiJBdXRvY2xlYW5vbmNlQXV0b2NsZWFuUGFpZGludm9pY2VzEhgKB2NsZWFuZWQYASABKARSB2'
    'NsZWFuZWQSHAoJdW5jbGVhbmVkGAIgASgEUgl1bmNsZWFuZWQ=');

@$core.Deprecated('Use autocleanonceAutocleanExpiredinvoicesDescriptor instead')
const AutocleanonceAutocleanExpiredinvoices$json = {
  '1': 'AutocleanonceAutocleanExpiredinvoices',
  '2': [
    {'1': 'cleaned', '3': 1, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'uncleaned', '3': 2, '4': 1, '5': 4, '10': 'uncleaned'},
  ],
};

/// Descriptor for `AutocleanonceAutocleanExpiredinvoices`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanonceAutocleanExpiredinvoicesDescriptor = $convert.base64Decode(
    'CiVBdXRvY2xlYW5vbmNlQXV0b2NsZWFuRXhwaXJlZGludm9pY2VzEhgKB2NsZWFuZWQYASABKA'
    'RSB2NsZWFuZWQSHAoJdW5jbGVhbmVkGAIgASgEUgl1bmNsZWFuZWQ=');

@$core.Deprecated('Use autocleanstatusRequestDescriptor instead')
const AutocleanstatusRequest$json = {
  '1': 'AutocleanstatusRequest',
  '2': [
    {'1': 'subsystem', '3': 1, '4': 1, '5': 14, '6': '.cln.AutocleanSubsystem', '9': 0, '10': 'subsystem', '17': true},
  ],
  '8': [
    {'1': '_subsystem'},
  ],
};

/// Descriptor for `AutocleanstatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusRequestDescriptor = $convert.base64Decode(
    'ChZBdXRvY2xlYW5zdGF0dXNSZXF1ZXN0EjoKCXN1YnN5c3RlbRgBIAEoDjIXLmNsbi5BdXRvY2'
    'xlYW5TdWJzeXN0ZW1IAFIJc3Vic3lzdGVtiAEBQgwKCl9zdWJzeXN0ZW0=');

@$core.Deprecated('Use autocleanstatusResponseDescriptor instead')
const AutocleanstatusResponse$json = {
  '1': 'AutocleanstatusResponse',
  '2': [
    {'1': 'autoclean', '3': 1, '4': 1, '5': 11, '6': '.cln.AutocleanstatusAutoclean', '10': 'autoclean'},
  ],
};

/// Descriptor for `AutocleanstatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusResponseDescriptor = $convert.base64Decode(
    'ChdBdXRvY2xlYW5zdGF0dXNSZXNwb25zZRI7CglhdXRvY2xlYW4YASABKAsyHS5jbG4uQXV0b2'
    'NsZWFuc3RhdHVzQXV0b2NsZWFuUglhdXRvY2xlYW4=');

@$core.Deprecated('Use autocleanstatusAutocleanDescriptor instead')
const AutocleanstatusAutoclean$json = {
  '1': 'AutocleanstatusAutoclean',
  '2': [
    {'1': 'succeededforwards', '3': 1, '4': 1, '5': 11, '6': '.cln.AutocleanstatusAutocleanSucceededforwards', '9': 0, '10': 'succeededforwards', '17': true},
    {'1': 'failedforwards', '3': 2, '4': 1, '5': 11, '6': '.cln.AutocleanstatusAutocleanFailedforwards', '9': 1, '10': 'failedforwards', '17': true},
    {'1': 'succeededpays', '3': 3, '4': 1, '5': 11, '6': '.cln.AutocleanstatusAutocleanSucceededpays', '9': 2, '10': 'succeededpays', '17': true},
    {'1': 'failedpays', '3': 4, '4': 1, '5': 11, '6': '.cln.AutocleanstatusAutocleanFailedpays', '9': 3, '10': 'failedpays', '17': true},
    {'1': 'paidinvoices', '3': 5, '4': 1, '5': 11, '6': '.cln.AutocleanstatusAutocleanPaidinvoices', '9': 4, '10': 'paidinvoices', '17': true},
    {'1': 'expiredinvoices', '3': 6, '4': 1, '5': 11, '6': '.cln.AutocleanstatusAutocleanExpiredinvoices', '9': 5, '10': 'expiredinvoices', '17': true},
  ],
  '8': [
    {'1': '_succeededforwards'},
    {'1': '_failedforwards'},
    {'1': '_succeededpays'},
    {'1': '_failedpays'},
    {'1': '_paidinvoices'},
    {'1': '_expiredinvoices'},
  ],
};

/// Descriptor for `AutocleanstatusAutoclean`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusAutocleanDescriptor = $convert.base64Decode(
    'ChhBdXRvY2xlYW5zdGF0dXNBdXRvY2xlYW4SYQoRc3VjY2VlZGVkZm9yd2FyZHMYASABKAsyLi'
    '5jbG4uQXV0b2NsZWFuc3RhdHVzQXV0b2NsZWFuU3VjY2VlZGVkZm9yd2FyZHNIAFIRc3VjY2Vl'
    'ZGVkZm9yd2FyZHOIAQESWAoOZmFpbGVkZm9yd2FyZHMYAiABKAsyKy5jbG4uQXV0b2NsZWFuc3'
    'RhdHVzQXV0b2NsZWFuRmFpbGVkZm9yd2FyZHNIAVIOZmFpbGVkZm9yd2FyZHOIAQESVQoNc3Vj'
    'Y2VlZGVkcGF5cxgDIAEoCzIqLmNsbi5BdXRvY2xlYW5zdGF0dXNBdXRvY2xlYW5TdWNjZWVkZW'
    'RwYXlzSAJSDXN1Y2NlZWRlZHBheXOIAQESTAoKZmFpbGVkcGF5cxgEIAEoCzInLmNsbi5BdXRv'
    'Y2xlYW5zdGF0dXNBdXRvY2xlYW5GYWlsZWRwYXlzSANSCmZhaWxlZHBheXOIAQESUgoMcGFpZG'
    'ludm9pY2VzGAUgASgLMikuY2xuLkF1dG9jbGVhbnN0YXR1c0F1dG9jbGVhblBhaWRpbnZvaWNl'
    'c0gEUgxwYWlkaW52b2ljZXOIAQESWwoPZXhwaXJlZGludm9pY2VzGAYgASgLMiwuY2xuLkF1dG'
    '9jbGVhbnN0YXR1c0F1dG9jbGVhbkV4cGlyZWRpbnZvaWNlc0gFUg9leHBpcmVkaW52b2ljZXOI'
    'AQFCFAoSX3N1Y2NlZWRlZGZvcndhcmRzQhEKD19mYWlsZWRmb3J3YXJkc0IQCg5fc3VjY2VlZG'
    'VkcGF5c0INCgtfZmFpbGVkcGF5c0IPCg1fcGFpZGludm9pY2VzQhIKEF9leHBpcmVkaW52b2lj'
    'ZXM=');

@$core.Deprecated('Use autocleanstatusAutocleanSucceededforwardsDescriptor instead')
const AutocleanstatusAutocleanSucceededforwards$json = {
  '1': 'AutocleanstatusAutocleanSucceededforwards',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'cleaned', '3': 2, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'age', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'age', '17': true},
  ],
  '8': [
    {'1': '_age'},
  ],
};

/// Descriptor for `AutocleanstatusAutocleanSucceededforwards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusAutocleanSucceededforwardsDescriptor = $convert.base64Decode(
    'CilBdXRvY2xlYW5zdGF0dXNBdXRvY2xlYW5TdWNjZWVkZWRmb3J3YXJkcxIYCgdlbmFibGVkGA'
    'EgASgIUgdlbmFibGVkEhgKB2NsZWFuZWQYAiABKARSB2NsZWFuZWQSFQoDYWdlGAMgASgESABS'
    'A2FnZYgBAUIGCgRfYWdl');

@$core.Deprecated('Use autocleanstatusAutocleanFailedforwardsDescriptor instead')
const AutocleanstatusAutocleanFailedforwards$json = {
  '1': 'AutocleanstatusAutocleanFailedforwards',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'cleaned', '3': 2, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'age', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'age', '17': true},
  ],
  '8': [
    {'1': '_age'},
  ],
};

/// Descriptor for `AutocleanstatusAutocleanFailedforwards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusAutocleanFailedforwardsDescriptor = $convert.base64Decode(
    'CiZBdXRvY2xlYW5zdGF0dXNBdXRvY2xlYW5GYWlsZWRmb3J3YXJkcxIYCgdlbmFibGVkGAEgAS'
    'gIUgdlbmFibGVkEhgKB2NsZWFuZWQYAiABKARSB2NsZWFuZWQSFQoDYWdlGAMgASgESABSA2Fn'
    'ZYgBAUIGCgRfYWdl');

@$core.Deprecated('Use autocleanstatusAutocleanSucceededpaysDescriptor instead')
const AutocleanstatusAutocleanSucceededpays$json = {
  '1': 'AutocleanstatusAutocleanSucceededpays',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'cleaned', '3': 2, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'age', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'age', '17': true},
  ],
  '8': [
    {'1': '_age'},
  ],
};

/// Descriptor for `AutocleanstatusAutocleanSucceededpays`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusAutocleanSucceededpaysDescriptor = $convert.base64Decode(
    'CiVBdXRvY2xlYW5zdGF0dXNBdXRvY2xlYW5TdWNjZWVkZWRwYXlzEhgKB2VuYWJsZWQYASABKA'
    'hSB2VuYWJsZWQSGAoHY2xlYW5lZBgCIAEoBFIHY2xlYW5lZBIVCgNhZ2UYAyABKARIAFIDYWdl'
    'iAEBQgYKBF9hZ2U=');

@$core.Deprecated('Use autocleanstatusAutocleanFailedpaysDescriptor instead')
const AutocleanstatusAutocleanFailedpays$json = {
  '1': 'AutocleanstatusAutocleanFailedpays',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'cleaned', '3': 2, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'age', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'age', '17': true},
  ],
  '8': [
    {'1': '_age'},
  ],
};

/// Descriptor for `AutocleanstatusAutocleanFailedpays`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusAutocleanFailedpaysDescriptor = $convert.base64Decode(
    'CiJBdXRvY2xlYW5zdGF0dXNBdXRvY2xlYW5GYWlsZWRwYXlzEhgKB2VuYWJsZWQYASABKAhSB2'
    'VuYWJsZWQSGAoHY2xlYW5lZBgCIAEoBFIHY2xlYW5lZBIVCgNhZ2UYAyABKARIAFIDYWdliAEB'
    'QgYKBF9hZ2U=');

@$core.Deprecated('Use autocleanstatusAutocleanPaidinvoicesDescriptor instead')
const AutocleanstatusAutocleanPaidinvoices$json = {
  '1': 'AutocleanstatusAutocleanPaidinvoices',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'cleaned', '3': 2, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'age', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'age', '17': true},
  ],
  '8': [
    {'1': '_age'},
  ],
};

/// Descriptor for `AutocleanstatusAutocleanPaidinvoices`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusAutocleanPaidinvoicesDescriptor = $convert.base64Decode(
    'CiRBdXRvY2xlYW5zdGF0dXNBdXRvY2xlYW5QYWlkaW52b2ljZXMSGAoHZW5hYmxlZBgBIAEoCF'
    'IHZW5hYmxlZBIYCgdjbGVhbmVkGAIgASgEUgdjbGVhbmVkEhUKA2FnZRgDIAEoBEgAUgNhZ2WI'
    'AQFCBgoEX2FnZQ==');

@$core.Deprecated('Use autocleanstatusAutocleanExpiredinvoicesDescriptor instead')
const AutocleanstatusAutocleanExpiredinvoices$json = {
  '1': 'AutocleanstatusAutocleanExpiredinvoices',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'cleaned', '3': 2, '4': 1, '5': 4, '10': 'cleaned'},
    {'1': 'age', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'age', '17': true},
  ],
  '8': [
    {'1': '_age'},
  ],
};

/// Descriptor for `AutocleanstatusAutocleanExpiredinvoices`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autocleanstatusAutocleanExpiredinvoicesDescriptor = $convert.base64Decode(
    'CidBdXRvY2xlYW5zdGF0dXNBdXRvY2xlYW5FeHBpcmVkaW52b2ljZXMSGAoHZW5hYmxlZBgBIA'
    'EoCFIHZW5hYmxlZBIYCgdjbGVhbmVkGAIgASgEUgdjbGVhbmVkEhUKA2FnZRgDIAEoBEgAUgNh'
    'Z2WIAQFCBgoEX2FnZQ==');

@$core.Deprecated('Use checkmessageRequestDescriptor instead')
const CheckmessageRequest$json = {
  '1': 'CheckmessageRequest',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'zbase', '3': 2, '4': 1, '5': 9, '10': 'zbase'},
    {'1': 'pubkey', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'pubkey', '17': true},
  ],
  '8': [
    {'1': '_pubkey'},
  ],
};

/// Descriptor for `CheckmessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkmessageRequestDescriptor = $convert.base64Decode(
    'ChNDaGVja21lc3NhZ2VSZXF1ZXN0EhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USFAoFemJhc2'
    'UYAiABKAlSBXpiYXNlEhsKBnB1YmtleRgDIAEoDEgAUgZwdWJrZXmIAQFCCQoHX3B1YmtleQ==');

@$core.Deprecated('Use checkmessageResponseDescriptor instead')
const CheckmessageResponse$json = {
  '1': 'CheckmessageResponse',
  '2': [
    {'1': 'verified', '3': 1, '4': 1, '5': 8, '10': 'verified'},
    {'1': 'pubkey', '3': 2, '4': 1, '5': 12, '10': 'pubkey'},
  ],
};

/// Descriptor for `CheckmessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkmessageResponseDescriptor = $convert.base64Decode(
    'ChRDaGVja21lc3NhZ2VSZXNwb25zZRIaCgh2ZXJpZmllZBgBIAEoCFIIdmVyaWZpZWQSFgoGcH'
    'Via2V5GAIgASgMUgZwdWJrZXk=');

@$core.Deprecated('Use closeRequestDescriptor instead')
const CloseRequest$json = {
  '1': 'CloseRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'unilateraltimeout', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'unilateraltimeout', '17': true},
    {'1': 'destination', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'destination', '17': true},
    {'1': 'fee_negotiation_step', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'feeNegotiationStep', '17': true},
    {'1': 'wrong_funding', '3': 5, '4': 1, '5': 11, '6': '.cln.Outpoint', '9': 3, '10': 'wrongFunding', '17': true},
    {'1': 'force_lease_closed', '3': 6, '4': 1, '5': 8, '9': 4, '10': 'forceLeaseClosed', '17': true},
    {'1': 'feerange', '3': 7, '4': 3, '5': 11, '6': '.cln.Feerate', '10': 'feerange'},
  ],
  '8': [
    {'1': '_unilateraltimeout'},
    {'1': '_destination'},
    {'1': '_fee_negotiation_step'},
    {'1': '_wrong_funding'},
    {'1': '_force_lease_closed'},
  ],
};

/// Descriptor for `CloseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeRequestDescriptor = $convert.base64Decode(
    'CgxDbG9zZVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEjEKEXVuaWxhdGVyYWx0aW1lb3V0GAIgAS'
    'gNSABSEXVuaWxhdGVyYWx0aW1lb3V0iAEBEiUKC2Rlc3RpbmF0aW9uGAMgASgJSAFSC2Rlc3Rp'
    'bmF0aW9uiAEBEjUKFGZlZV9uZWdvdGlhdGlvbl9zdGVwGAQgASgJSAJSEmZlZU5lZ290aWF0aW'
    '9uU3RlcIgBARI3Cg13cm9uZ19mdW5kaW5nGAUgASgLMg0uY2xuLk91dHBvaW50SANSDHdyb25n'
    'RnVuZGluZ4gBARIxChJmb3JjZV9sZWFzZV9jbG9zZWQYBiABKAhIBFIQZm9yY2VMZWFzZUNsb3'
    'NlZIgBARIoCghmZWVyYW5nZRgHIAMoCzIMLmNsbi5GZWVyYXRlUghmZWVyYW5nZUIUChJfdW5p'
    'bGF0ZXJhbHRpbWVvdXRCDgoMX2Rlc3RpbmF0aW9uQhcKFV9mZWVfbmVnb3RpYXRpb25fc3RlcE'
    'IQCg5fd3JvbmdfZnVuZGluZ0IVChNfZm9yY2VfbGVhc2VfY2xvc2Vk');

@$core.Deprecated('Use closeResponseDescriptor instead')
const CloseResponse$json = {
  '1': 'CloseResponse',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.CloseResponse.CloseType', '10': 'itemType'},
    {'1': 'tx', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'tx', '17': true},
    {'1': 'txid', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'txid', '17': true},
  ],
  '4': [CloseResponse_CloseType$json],
  '8': [
    {'1': '_tx'},
    {'1': '_txid'},
  ],
};

@$core.Deprecated('Use closeResponseDescriptor instead')
const CloseResponse_CloseType$json = {
  '1': 'CloseType',
  '2': [
    {'1': 'MUTUAL', '2': 0},
    {'1': 'UNILATERAL', '2': 1},
    {'1': 'UNOPENED', '2': 2},
  ],
};

/// Descriptor for `CloseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeResponseDescriptor = $convert.base64Decode(
    'Cg1DbG9zZVJlc3BvbnNlEjkKCWl0ZW1fdHlwZRgBIAEoDjIcLmNsbi5DbG9zZVJlc3BvbnNlLk'
    'Nsb3NlVHlwZVIIaXRlbVR5cGUSEwoCdHgYAiABKAxIAFICdHiIAQESFwoEdHhpZBgDIAEoDEgB'
    'UgR0eGlkiAEBIjUKCUNsb3NlVHlwZRIKCgZNVVRVQUwQABIOCgpVTklMQVRFUkFMEAESDAoIVU'
    '5PUEVORUQQAkIFCgNfdHhCBwoFX3R4aWQ=');

@$core.Deprecated('Use connectRequestDescriptor instead')
const ConnectRequest$json = {
  '1': 'ConnectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'host', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'host', '17': true},
    {'1': 'port', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'port', '17': true},
  ],
  '8': [
    {'1': '_host'},
    {'1': '_port'},
  ],
};

/// Descriptor for `ConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectRequestDescriptor = $convert.base64Decode(
    'Cg5Db25uZWN0UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEaG9zdBgCIAEoCUgAUgRob3N0iA'
    'EBEhcKBHBvcnQYAyABKA1IAVIEcG9ydIgBAUIHCgVfaG9zdEIHCgVfcG9ydA==');

@$core.Deprecated('Use connectResponseDescriptor instead')
const ConnectResponse$json = {
  '1': 'ConnectResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'features', '3': 2, '4': 1, '5': 12, '10': 'features'},
    {'1': 'direction', '3': 3, '4': 1, '5': 14, '6': '.cln.ConnectResponse.ConnectDirection', '10': 'direction'},
    {'1': 'address', '3': 4, '4': 1, '5': 11, '6': '.cln.ConnectAddress', '10': 'address'},
  ],
  '4': [ConnectResponse_ConnectDirection$json],
};

@$core.Deprecated('Use connectResponseDescriptor instead')
const ConnectResponse_ConnectDirection$json = {
  '1': 'ConnectDirection',
  '2': [
    {'1': 'IN', '2': 0},
    {'1': 'OUT', '2': 1},
  ],
};

/// Descriptor for `ConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectResponseDescriptor = $convert.base64Decode(
    'Cg9Db25uZWN0UmVzcG9uc2USDgoCaWQYASABKAxSAmlkEhoKCGZlYXR1cmVzGAIgASgMUghmZW'
    'F0dXJlcxJDCglkaXJlY3Rpb24YAyABKA4yJS5jbG4uQ29ubmVjdFJlc3BvbnNlLkNvbm5lY3RE'
    'aXJlY3Rpb25SCWRpcmVjdGlvbhItCgdhZGRyZXNzGAQgASgLMhMuY2xuLkNvbm5lY3RBZGRyZX'
    'NzUgdhZGRyZXNzIiMKEENvbm5lY3REaXJlY3Rpb24SBgoCSU4QABIHCgNPVVQQAQ==');

@$core.Deprecated('Use connectAddressDescriptor instead')
const ConnectAddress$json = {
  '1': 'ConnectAddress',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.ConnectAddress.ConnectAddressType', '10': 'itemType'},
    {'1': 'socket', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'socket', '17': true},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'address', '17': true},
    {'1': 'port', '3': 4, '4': 1, '5': 13, '9': 2, '10': 'port', '17': true},
  ],
  '4': [ConnectAddress_ConnectAddressType$json],
  '8': [
    {'1': '_socket'},
    {'1': '_address'},
    {'1': '_port'},
  ],
};

@$core.Deprecated('Use connectAddressDescriptor instead')
const ConnectAddress_ConnectAddressType$json = {
  '1': 'ConnectAddressType',
  '2': [
    {'1': 'LOCAL_SOCKET', '2': 0},
    {'1': 'IPV4', '2': 1},
    {'1': 'IPV6', '2': 2},
    {'1': 'TORV2', '2': 3},
    {'1': 'TORV3', '2': 4},
  ],
};

/// Descriptor for `ConnectAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectAddressDescriptor = $convert.base64Decode(
    'Cg5Db25uZWN0QWRkcmVzcxJDCglpdGVtX3R5cGUYASABKA4yJi5jbG4uQ29ubmVjdEFkZHJlc3'
    'MuQ29ubmVjdEFkZHJlc3NUeXBlUghpdGVtVHlwZRIbCgZzb2NrZXQYAiABKAlIAFIGc29ja2V0'
    'iAEBEh0KB2FkZHJlc3MYAyABKAlIAVIHYWRkcmVzc4gBARIXCgRwb3J0GAQgASgNSAJSBHBvcn'
    'SIAQEiUAoSQ29ubmVjdEFkZHJlc3NUeXBlEhAKDExPQ0FMX1NPQ0tFVBAAEggKBElQVjQQARII'
    'CgRJUFY2EAISCQoFVE9SVjIQAxIJCgVUT1JWMxAEQgkKB19zb2NrZXRCCgoIX2FkZHJlc3NCBw'
    'oFX3BvcnQ=');

@$core.Deprecated('Use createinvoiceRequestDescriptor instead')
const CreateinvoiceRequest$json = {
  '1': 'CreateinvoiceRequest',
  '2': [
    {'1': 'invstring', '3': 1, '4': 1, '5': 9, '10': 'invstring'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    {'1': 'preimage', '3': 3, '4': 1, '5': 12, '10': 'preimage'},
  ],
};

/// Descriptor for `CreateinvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createinvoiceRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVpbnZvaWNlUmVxdWVzdBIcCglpbnZzdHJpbmcYASABKAlSCWludnN0cmluZxIUCg'
    'VsYWJlbBgCIAEoCVIFbGFiZWwSGgoIcHJlaW1hZ2UYAyABKAxSCHByZWltYWdl');

@$core.Deprecated('Use createinvoiceResponseDescriptor instead')
const CreateinvoiceResponse$json = {
  '1': 'CreateinvoiceResponse',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'bolt11', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'bolt12', '17': true},
    {'1': 'payment_hash', '3': 4, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 2, '10': 'amountMsat', '17': true},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.cln.CreateinvoiceResponse.CreateinvoiceStatus', '10': 'status'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    {'1': 'expires_at', '3': 8, '4': 1, '5': 4, '10': 'expiresAt'},
    {'1': 'pay_index', '3': 9, '4': 1, '5': 4, '9': 3, '10': 'payIndex', '17': true},
    {'1': 'amount_received_msat', '3': 10, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'amountReceivedMsat', '17': true},
    {'1': 'paid_at', '3': 11, '4': 1, '5': 4, '9': 5, '10': 'paidAt', '17': true},
    {'1': 'payment_preimage', '3': 12, '4': 1, '5': 12, '9': 6, '10': 'paymentPreimage', '17': true},
    {'1': 'local_offer_id', '3': 13, '4': 1, '5': 12, '9': 7, '10': 'localOfferId', '17': true},
    {'1': 'invreq_payer_note', '3': 15, '4': 1, '5': 9, '9': 8, '10': 'invreqPayerNote', '17': true},
    {'1': 'created_index', '3': 16, '4': 1, '5': 4, '9': 9, '10': 'createdIndex', '17': true},
    {'1': 'paid_outpoint', '3': 17, '4': 1, '5': 11, '6': '.cln.CreateinvoicePaid_outpoint', '9': 10, '10': 'paidOutpoint', '17': true},
  ],
  '4': [CreateinvoiceResponse_CreateinvoiceStatus$json],
  '8': [
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_amount_msat'},
    {'1': '_pay_index'},
    {'1': '_amount_received_msat'},
    {'1': '_paid_at'},
    {'1': '_payment_preimage'},
    {'1': '_local_offer_id'},
    {'1': '_invreq_payer_note'},
    {'1': '_created_index'},
    {'1': '_paid_outpoint'},
  ],
};

@$core.Deprecated('Use createinvoiceResponseDescriptor instead')
const CreateinvoiceResponse_CreateinvoiceStatus$json = {
  '1': 'CreateinvoiceStatus',
  '2': [
    {'1': 'PAID', '2': 0},
    {'1': 'EXPIRED', '2': 1},
    {'1': 'UNPAID', '2': 2},
  ],
};

/// Descriptor for `CreateinvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createinvoiceResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVpbnZvaWNlUmVzcG9uc2USFAoFbGFiZWwYASABKAlSBWxhYmVsEhsKBmJvbHQxMR'
    'gCIAEoCUgAUgZib2x0MTGIAQESGwoGYm9sdDEyGAMgASgJSAFSBmJvbHQxMogBARIhCgxwYXlt'
    'ZW50X2hhc2gYBCABKAxSC3BheW1lbnRIYXNoEjEKC2Ftb3VudF9tc2F0GAUgASgLMgsuY2xuLk'
    'Ftb3VudEgCUgphbW91bnRNc2F0iAEBEkYKBnN0YXR1cxgGIAEoDjIuLmNsbi5DcmVhdGVpbnZv'
    'aWNlUmVzcG9uc2UuQ3JlYXRlaW52b2ljZVN0YXR1c1IGc3RhdHVzEiAKC2Rlc2NyaXB0aW9uGA'
    'cgASgJUgtkZXNjcmlwdGlvbhIdCgpleHBpcmVzX2F0GAggASgEUglleHBpcmVzQXQSIAoJcGF5'
    'X2luZGV4GAkgASgESANSCHBheUluZGV4iAEBEkIKFGFtb3VudF9yZWNlaXZlZF9tc2F0GAogAS'
    'gLMgsuY2xuLkFtb3VudEgEUhJhbW91bnRSZWNlaXZlZE1zYXSIAQESHAoHcGFpZF9hdBgLIAEo'
    'BEgFUgZwYWlkQXSIAQESLgoQcGF5bWVudF9wcmVpbWFnZRgMIAEoDEgGUg9wYXltZW50UHJlaW'
    '1hZ2WIAQESKQoObG9jYWxfb2ZmZXJfaWQYDSABKAxIB1IMbG9jYWxPZmZlcklkiAEBEi8KEWlu'
    'dnJlcV9wYXllcl9ub3RlGA8gASgJSAhSD2ludnJlcVBheWVyTm90ZYgBARIoCg1jcmVhdGVkX2'
    'luZGV4GBAgASgESAlSDGNyZWF0ZWRJbmRleIgBARJJCg1wYWlkX291dHBvaW50GBEgASgLMh8u'
    'Y2xuLkNyZWF0ZWludm9pY2VQYWlkX291dHBvaW50SApSDHBhaWRPdXRwb2ludIgBASI4ChNDcm'
    'VhdGVpbnZvaWNlU3RhdHVzEggKBFBBSUQQABILCgdFWFBJUkVEEAESCgoGVU5QQUlEEAJCCQoH'
    'X2JvbHQxMUIJCgdfYm9sdDEyQg4KDF9hbW91bnRfbXNhdEIMCgpfcGF5X2luZGV4QhcKFV9hbW'
    '91bnRfcmVjZWl2ZWRfbXNhdEIKCghfcGFpZF9hdEITChFfcGF5bWVudF9wcmVpbWFnZUIRCg9f'
    'bG9jYWxfb2ZmZXJfaWRCFAoSX2ludnJlcV9wYXllcl9ub3RlQhAKDl9jcmVhdGVkX2luZGV4Qh'
    'AKDl9wYWlkX291dHBvaW50');

@$core.Deprecated('Use createinvoicePaid_outpointDescriptor instead')
const CreateinvoicePaid_outpoint$json = {
  '1': 'CreateinvoicePaid_outpoint',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'outnum', '3': 2, '4': 1, '5': 13, '10': 'outnum'},
  ],
};

/// Descriptor for `CreateinvoicePaid_outpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createinvoicePaid_outpointDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVpbnZvaWNlUGFpZF9vdXRwb2ludBISCgR0eGlkGAEgASgMUgR0eGlkEhYKBm91dG'
    '51bRgCIAEoDVIGb3V0bnVt');

@$core.Deprecated('Use datastoreRequestDescriptor instead')
const DatastoreRequest$json = {
  '1': 'DatastoreRequest',
  '2': [
    {'1': 'hex', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'hex', '17': true},
    {'1': 'mode', '3': 3, '4': 1, '5': 14, '6': '.cln.DatastoreRequest.DatastoreMode', '9': 1, '10': 'mode', '17': true},
    {'1': 'generation', '3': 4, '4': 1, '5': 4, '9': 2, '10': 'generation', '17': true},
    {'1': 'key', '3': 5, '4': 3, '5': 9, '10': 'key'},
    {'1': 'string', '3': 6, '4': 1, '5': 9, '9': 3, '10': 'string', '17': true},
  ],
  '4': [DatastoreRequest_DatastoreMode$json],
  '8': [
    {'1': '_hex'},
    {'1': '_mode'},
    {'1': '_generation'},
    {'1': '_string'},
  ],
};

@$core.Deprecated('Use datastoreRequestDescriptor instead')
const DatastoreRequest_DatastoreMode$json = {
  '1': 'DatastoreMode',
  '2': [
    {'1': 'MUST_CREATE', '2': 0},
    {'1': 'MUST_REPLACE', '2': 1},
    {'1': 'CREATE_OR_REPLACE', '2': 2},
    {'1': 'MUST_APPEND', '2': 3},
    {'1': 'CREATE_OR_APPEND', '2': 4},
  ],
};

/// Descriptor for `DatastoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List datastoreRequestDescriptor = $convert.base64Decode(
    'ChBEYXRhc3RvcmVSZXF1ZXN0EhUKA2hleBgCIAEoDEgAUgNoZXiIAQESPAoEbW9kZRgDIAEoDj'
    'IjLmNsbi5EYXRhc3RvcmVSZXF1ZXN0LkRhdGFzdG9yZU1vZGVIAVIEbW9kZYgBARIjCgpnZW5l'
    'cmF0aW9uGAQgASgESAJSCmdlbmVyYXRpb26IAQESEAoDa2V5GAUgAygJUgNrZXkSGwoGc3RyaW'
    '5nGAYgASgJSANSBnN0cmluZ4gBASJwCg1EYXRhc3RvcmVNb2RlEg8KC01VU1RfQ1JFQVRFEAAS'
    'EAoMTVVTVF9SRVBMQUNFEAESFQoRQ1JFQVRFX09SX1JFUExBQ0UQAhIPCgtNVVNUX0FQUEVORB'
    'ADEhQKEENSRUFURV9PUl9BUFBFTkQQBEIGCgRfaGV4QgcKBV9tb2RlQg0KC19nZW5lcmF0aW9u'
    'QgkKB19zdHJpbmc=');

@$core.Deprecated('Use datastoreResponseDescriptor instead')
const DatastoreResponse$json = {
  '1': 'DatastoreResponse',
  '2': [
    {'1': 'generation', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'generation', '17': true},
    {'1': 'hex', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'hex', '17': true},
    {'1': 'string', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'string', '17': true},
    {'1': 'key', '3': 5, '4': 3, '5': 9, '10': 'key'},
  ],
  '8': [
    {'1': '_generation'},
    {'1': '_hex'},
    {'1': '_string'},
  ],
};

/// Descriptor for `DatastoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List datastoreResponseDescriptor = $convert.base64Decode(
    'ChFEYXRhc3RvcmVSZXNwb25zZRIjCgpnZW5lcmF0aW9uGAIgASgESABSCmdlbmVyYXRpb26IAQ'
    'ESFQoDaGV4GAMgASgMSAFSA2hleIgBARIbCgZzdHJpbmcYBCABKAlIAlIGc3RyaW5niAEBEhAK'
    'A2tleRgFIAMoCVIDa2V5Qg0KC19nZW5lcmF0aW9uQgYKBF9oZXhCCQoHX3N0cmluZw==');

@$core.Deprecated('Use datastoreusageRequestDescriptor instead')
const DatastoreusageRequest$json = {
  '1': 'DatastoreusageRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 3, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `DatastoreusageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List datastoreusageRequestDescriptor = $convert.base64Decode(
    'ChVEYXRhc3RvcmV1c2FnZVJlcXVlc3QSEAoDa2V5GAEgAygJUgNrZXk=');

@$core.Deprecated('Use datastoreusageResponseDescriptor instead')
const DatastoreusageResponse$json = {
  '1': 'DatastoreusageResponse',
  '2': [
    {'1': 'datastoreusage', '3': 1, '4': 1, '5': 11, '6': '.cln.DatastoreusageDatastoreusage', '10': 'datastoreusage'},
  ],
};

/// Descriptor for `DatastoreusageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List datastoreusageResponseDescriptor = $convert.base64Decode(
    'ChZEYXRhc3RvcmV1c2FnZVJlc3BvbnNlEkkKDmRhdGFzdG9yZXVzYWdlGAEgASgLMiEuY2xuLk'
    'RhdGFzdG9yZXVzYWdlRGF0YXN0b3JldXNhZ2VSDmRhdGFzdG9yZXVzYWdl');

@$core.Deprecated('Use datastoreusageDatastoreusageDescriptor instead')
const DatastoreusageDatastoreusage$json = {
  '1': 'DatastoreusageDatastoreusage',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'total_bytes', '3': 2, '4': 1, '5': 4, '10': 'totalBytes'},
  ],
};

/// Descriptor for `DatastoreusageDatastoreusage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List datastoreusageDatastoreusageDescriptor = $convert.base64Decode(
    'ChxEYXRhc3RvcmV1c2FnZURhdGFzdG9yZXVzYWdlEhAKA2tleRgBIAEoCVIDa2V5Eh8KC3RvdG'
    'FsX2J5dGVzGAIgASgEUgp0b3RhbEJ5dGVz');

@$core.Deprecated('Use createonionRequestDescriptor instead')
const CreateonionRequest$json = {
  '1': 'CreateonionRequest',
  '2': [
    {'1': 'hops', '3': 1, '4': 3, '5': 11, '6': '.cln.CreateonionHops', '10': 'hops'},
    {'1': 'assocdata', '3': 2, '4': 1, '5': 12, '10': 'assocdata'},
    {'1': 'session_key', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'sessionKey', '17': true},
    {'1': 'onion_size', '3': 4, '4': 1, '5': 13, '9': 1, '10': 'onionSize', '17': true},
  ],
  '8': [
    {'1': '_session_key'},
    {'1': '_onion_size'},
  ],
};

/// Descriptor for `CreateonionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createonionRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVvbmlvblJlcXVlc3QSKAoEaG9wcxgBIAMoCzIULmNsbi5DcmVhdGVvbmlvbkhvcH'
    'NSBGhvcHMSHAoJYXNzb2NkYXRhGAIgASgMUglhc3NvY2RhdGESJAoLc2Vzc2lvbl9rZXkYAyAB'
    'KAxIAFIKc2Vzc2lvbktleYgBARIiCgpvbmlvbl9zaXplGAQgASgNSAFSCW9uaW9uU2l6ZYgBAU'
    'IOCgxfc2Vzc2lvbl9rZXlCDQoLX29uaW9uX3NpemU=');

@$core.Deprecated('Use createonionResponseDescriptor instead')
const CreateonionResponse$json = {
  '1': 'CreateonionResponse',
  '2': [
    {'1': 'onion', '3': 1, '4': 1, '5': 12, '10': 'onion'},
    {'1': 'shared_secrets', '3': 2, '4': 3, '5': 12, '10': 'sharedSecrets'},
  ],
};

/// Descriptor for `CreateonionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createonionResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVvbmlvblJlc3BvbnNlEhQKBW9uaW9uGAEgASgMUgVvbmlvbhIlCg5zaGFyZWRfc2'
    'VjcmV0cxgCIAMoDFINc2hhcmVkU2VjcmV0cw==');

@$core.Deprecated('Use createonionHopsDescriptor instead')
const CreateonionHops$json = {
  '1': 'CreateonionHops',
  '2': [
    {'1': 'pubkey', '3': 1, '4': 1, '5': 12, '10': 'pubkey'},
    {'1': 'payload', '3': 2, '4': 1, '5': 12, '10': 'payload'},
  ],
};

/// Descriptor for `CreateonionHops`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createonionHopsDescriptor = $convert.base64Decode(
    'Cg9DcmVhdGVvbmlvbkhvcHMSFgoGcHVia2V5GAEgASgMUgZwdWJrZXkSGAoHcGF5bG9hZBgCIA'
    'EoDFIHcGF5bG9hZA==');

@$core.Deprecated('Use deldatastoreRequestDescriptor instead')
const DeldatastoreRequest$json = {
  '1': 'DeldatastoreRequest',
  '2': [
    {'1': 'generation', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'generation', '17': true},
    {'1': 'key', '3': 3, '4': 3, '5': 9, '10': 'key'},
  ],
  '8': [
    {'1': '_generation'},
  ],
};

/// Descriptor for `DeldatastoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deldatastoreRequestDescriptor = $convert.base64Decode(
    'ChNEZWxkYXRhc3RvcmVSZXF1ZXN0EiMKCmdlbmVyYXRpb24YAiABKARIAFIKZ2VuZXJhdGlvbo'
    'gBARIQCgNrZXkYAyADKAlSA2tleUINCgtfZ2VuZXJhdGlvbg==');

@$core.Deprecated('Use deldatastoreResponseDescriptor instead')
const DeldatastoreResponse$json = {
  '1': 'DeldatastoreResponse',
  '2': [
    {'1': 'generation', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'generation', '17': true},
    {'1': 'hex', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'hex', '17': true},
    {'1': 'string', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'string', '17': true},
    {'1': 'key', '3': 5, '4': 3, '5': 9, '10': 'key'},
  ],
  '8': [
    {'1': '_generation'},
    {'1': '_hex'},
    {'1': '_string'},
  ],
};

/// Descriptor for `DeldatastoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deldatastoreResponseDescriptor = $convert.base64Decode(
    'ChREZWxkYXRhc3RvcmVSZXNwb25zZRIjCgpnZW5lcmF0aW9uGAIgASgESABSCmdlbmVyYXRpb2'
    '6IAQESFQoDaGV4GAMgASgMSAFSA2hleIgBARIbCgZzdHJpbmcYBCABKAlIAlIGc3RyaW5niAEB'
    'EhAKA2tleRgFIAMoCVIDa2V5Qg0KC19nZW5lcmF0aW9uQgYKBF9oZXhCCQoHX3N0cmluZw==');

@$core.Deprecated('Use delinvoiceRequestDescriptor instead')
const DelinvoiceRequest$json = {
  '1': 'DelinvoiceRequest',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.cln.DelinvoiceRequest.DelinvoiceStatus', '10': 'status'},
    {'1': 'desconly', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'desconly', '17': true},
  ],
  '4': [DelinvoiceRequest_DelinvoiceStatus$json],
  '8': [
    {'1': '_desconly'},
  ],
};

@$core.Deprecated('Use delinvoiceRequestDescriptor instead')
const DelinvoiceRequest_DelinvoiceStatus$json = {
  '1': 'DelinvoiceStatus',
  '2': [
    {'1': 'PAID', '2': 0},
    {'1': 'EXPIRED', '2': 1},
    {'1': 'UNPAID', '2': 2},
  ],
};

/// Descriptor for `DelinvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delinvoiceRequestDescriptor = $convert.base64Decode(
    'ChFEZWxpbnZvaWNlUmVxdWVzdBIUCgVsYWJlbBgBIAEoCVIFbGFiZWwSPwoGc3RhdHVzGAIgAS'
    'gOMicuY2xuLkRlbGludm9pY2VSZXF1ZXN0LkRlbGludm9pY2VTdGF0dXNSBnN0YXR1cxIfCghk'
    'ZXNjb25seRgDIAEoCEgAUghkZXNjb25seYgBASI1ChBEZWxpbnZvaWNlU3RhdHVzEggKBFBBSU'
    'QQABILCgdFWFBJUkVEEAESCgoGVU5QQUlEEAJCCwoJX2Rlc2Nvbmx5');

@$core.Deprecated('Use delinvoiceResponseDescriptor instead')
const DelinvoiceResponse$json = {
  '1': 'DelinvoiceResponse',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'bolt11', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'bolt12', '17': true},
    {'1': 'amount_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '9': 2, '10': 'amountMsat', '17': true},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'description', '17': true},
    {'1': 'payment_hash', '3': 6, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 7, '4': 1, '5': 14, '6': '.cln.DelinvoiceResponse.DelinvoiceStatus', '10': 'status'},
    {'1': 'expires_at', '3': 8, '4': 1, '5': 4, '10': 'expiresAt'},
    {'1': 'local_offer_id', '3': 9, '4': 1, '5': 12, '9': 4, '10': 'localOfferId', '17': true},
    {'1': 'invreq_payer_note', '3': 11, '4': 1, '5': 9, '9': 5, '10': 'invreqPayerNote', '17': true},
    {'1': 'created_index', '3': 12, '4': 1, '5': 4, '9': 6, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 13, '4': 1, '5': 4, '9': 7, '10': 'updatedIndex', '17': true},
    {'1': 'pay_index', '3': 14, '4': 1, '5': 4, '9': 8, '10': 'payIndex', '17': true},
    {'1': 'amount_received_msat', '3': 15, '4': 1, '5': 11, '6': '.cln.Amount', '9': 9, '10': 'amountReceivedMsat', '17': true},
    {'1': 'paid_at', '3': 16, '4': 1, '5': 4, '9': 10, '10': 'paidAt', '17': true},
    {'1': 'payment_preimage', '3': 17, '4': 1, '5': 12, '9': 11, '10': 'paymentPreimage', '17': true},
  ],
  '4': [DelinvoiceResponse_DelinvoiceStatus$json],
  '8': [
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_amount_msat'},
    {'1': '_description'},
    {'1': '_local_offer_id'},
    {'1': '_invreq_payer_note'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
    {'1': '_pay_index'},
    {'1': '_amount_received_msat'},
    {'1': '_paid_at'},
    {'1': '_payment_preimage'},
  ],
};

@$core.Deprecated('Use delinvoiceResponseDescriptor instead')
const DelinvoiceResponse_DelinvoiceStatus$json = {
  '1': 'DelinvoiceStatus',
  '2': [
    {'1': 'PAID', '2': 0},
    {'1': 'EXPIRED', '2': 1},
    {'1': 'UNPAID', '2': 2},
  ],
};

/// Descriptor for `DelinvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delinvoiceResponseDescriptor = $convert.base64Decode(
    'ChJEZWxpbnZvaWNlUmVzcG9uc2USFAoFbGFiZWwYASABKAlSBWxhYmVsEhsKBmJvbHQxMRgCIA'
    'EoCUgAUgZib2x0MTGIAQESGwoGYm9sdDEyGAMgASgJSAFSBmJvbHQxMogBARIxCgthbW91bnRf'
    'bXNhdBgEIAEoCzILLmNsbi5BbW91bnRIAlIKYW1vdW50TXNhdIgBARIlCgtkZXNjcmlwdGlvbh'
    'gFIAEoCUgDUgtkZXNjcmlwdGlvbogBARIhCgxwYXltZW50X2hhc2gYBiABKAxSC3BheW1lbnRI'
    'YXNoEkAKBnN0YXR1cxgHIAEoDjIoLmNsbi5EZWxpbnZvaWNlUmVzcG9uc2UuRGVsaW52b2ljZV'
    'N0YXR1c1IGc3RhdHVzEh0KCmV4cGlyZXNfYXQYCCABKARSCWV4cGlyZXNBdBIpCg5sb2NhbF9v'
    'ZmZlcl9pZBgJIAEoDEgEUgxsb2NhbE9mZmVySWSIAQESLwoRaW52cmVxX3BheWVyX25vdGUYCy'
    'ABKAlIBVIPaW52cmVxUGF5ZXJOb3RliAEBEigKDWNyZWF0ZWRfaW5kZXgYDCABKARIBlIMY3Jl'
    'YXRlZEluZGV4iAEBEigKDXVwZGF0ZWRfaW5kZXgYDSABKARIB1IMdXBkYXRlZEluZGV4iAEBEi'
    'AKCXBheV9pbmRleBgOIAEoBEgIUghwYXlJbmRleIgBARJCChRhbW91bnRfcmVjZWl2ZWRfbXNh'
    'dBgPIAEoCzILLmNsbi5BbW91bnRICVISYW1vdW50UmVjZWl2ZWRNc2F0iAEBEhwKB3BhaWRfYX'
    'QYECABKARIClIGcGFpZEF0iAEBEi4KEHBheW1lbnRfcHJlaW1hZ2UYESABKAxIC1IPcGF5bWVu'
    'dFByZWltYWdliAEBIjUKEERlbGludm9pY2VTdGF0dXMSCAoEUEFJRBAAEgsKB0VYUElSRUQQAR'
    'IKCgZVTlBBSUQQAkIJCgdfYm9sdDExQgkKB19ib2x0MTJCDgoMX2Ftb3VudF9tc2F0Qg4KDF9k'
    'ZXNjcmlwdGlvbkIRCg9fbG9jYWxfb2ZmZXJfaWRCFAoSX2ludnJlcV9wYXllcl9ub3RlQhAKDl'
    '9jcmVhdGVkX2luZGV4QhAKDl91cGRhdGVkX2luZGV4QgwKCl9wYXlfaW5kZXhCFwoVX2Ftb3Vu'
    'dF9yZWNlaXZlZF9tc2F0QgoKCF9wYWlkX2F0QhMKEV9wYXltZW50X3ByZWltYWdl');

@$core.Deprecated('Use devforgetchannelRequestDescriptor instead')
const DevforgetchannelRequest$json = {
  '1': 'DevforgetchannelRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'short_channel_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'shortChannelId', '17': true},
    {'1': 'channel_id', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'channelId', '17': true},
    {'1': 'force', '3': 4, '4': 1, '5': 8, '9': 2, '10': 'force', '17': true},
  ],
  '8': [
    {'1': '_short_channel_id'},
    {'1': '_channel_id'},
    {'1': '_force'},
  ],
};

/// Descriptor for `DevforgetchannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List devforgetchannelRequestDescriptor = $convert.base64Decode(
    'ChdEZXZmb3JnZXRjaGFubmVsUmVxdWVzdBIOCgJpZBgBIAEoDFICaWQSLQoQc2hvcnRfY2hhbm'
    '5lbF9pZBgCIAEoCUgAUg5zaG9ydENoYW5uZWxJZIgBARIiCgpjaGFubmVsX2lkGAMgASgMSAFS'
    'CWNoYW5uZWxJZIgBARIZCgVmb3JjZRgEIAEoCEgCUgVmb3JjZYgBAUITChFfc2hvcnRfY2hhbm'
    '5lbF9pZEINCgtfY2hhbm5lbF9pZEIICgZfZm9yY2U=');

@$core.Deprecated('Use devforgetchannelResponseDescriptor instead')
const DevforgetchannelResponse$json = {
  '1': 'DevforgetchannelResponse',
  '2': [
    {'1': 'forced', '3': 1, '4': 1, '5': 8, '10': 'forced'},
    {'1': 'funding_unspent', '3': 2, '4': 1, '5': 8, '10': 'fundingUnspent'},
    {'1': 'funding_txid', '3': 3, '4': 1, '5': 12, '10': 'fundingTxid'},
  ],
};

/// Descriptor for `DevforgetchannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List devforgetchannelResponseDescriptor = $convert.base64Decode(
    'ChhEZXZmb3JnZXRjaGFubmVsUmVzcG9uc2USFgoGZm9yY2VkGAEgASgIUgZmb3JjZWQSJwoPZn'
    'VuZGluZ191bnNwZW50GAIgASgIUg5mdW5kaW5nVW5zcGVudBIhCgxmdW5kaW5nX3R4aWQYAyAB'
    'KAxSC2Z1bmRpbmdUeGlk');

@$core.Deprecated('Use emergencyrecoverRequestDescriptor instead')
const EmergencyrecoverRequest$json = {
  '1': 'EmergencyrecoverRequest',
};

/// Descriptor for `EmergencyrecoverRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emergencyrecoverRequestDescriptor = $convert.base64Decode(
    'ChdFbWVyZ2VuY3lyZWNvdmVyUmVxdWVzdA==');

@$core.Deprecated('Use emergencyrecoverResponseDescriptor instead')
const EmergencyrecoverResponse$json = {
  '1': 'EmergencyrecoverResponse',
  '2': [
    {'1': 'stubs', '3': 1, '4': 3, '5': 12, '10': 'stubs'},
  ],
};

/// Descriptor for `EmergencyrecoverResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emergencyrecoverResponseDescriptor = $convert.base64Decode(
    'ChhFbWVyZ2VuY3lyZWNvdmVyUmVzcG9uc2USFAoFc3R1YnMYASADKAxSBXN0dWJz');

@$core.Deprecated('Use recoverRequestDescriptor instead')
const RecoverRequest$json = {
  '1': 'RecoverRequest',
  '2': [
    {'1': 'hsmsecret', '3': 1, '4': 1, '5': 9, '10': 'hsmsecret'},
  ],
};

/// Descriptor for `RecoverRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverRequestDescriptor = $convert.base64Decode(
    'Cg5SZWNvdmVyUmVxdWVzdBIcCgloc21zZWNyZXQYASABKAlSCWhzbXNlY3JldA==');

@$core.Deprecated('Use recoverResponseDescriptor instead')
const RecoverResponse$json = {
  '1': 'RecoverResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.cln.RecoverResponse.RecoverResult', '9': 0, '10': 'result', '17': true},
  ],
  '4': [RecoverResponse_RecoverResult$json],
  '8': [
    {'1': '_result'},
  ],
};

@$core.Deprecated('Use recoverResponseDescriptor instead')
const RecoverResponse_RecoverResult$json = {
  '1': 'RecoverResult',
  '2': [
    {'1': 'RECOVERY_RESTART_IN_PROGRESS', '2': 0},
  ],
};

/// Descriptor for `RecoverResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverResponseDescriptor = $convert.base64Decode(
    'Cg9SZWNvdmVyUmVzcG9uc2USPwoGcmVzdWx0GAEgASgOMiIuY2xuLlJlY292ZXJSZXNwb25zZS'
    '5SZWNvdmVyUmVzdWx0SABSBnJlc3VsdIgBASIxCg1SZWNvdmVyUmVzdWx0EiAKHFJFQ09WRVJZ'
    'X1JFU1RBUlRfSU5fUFJPR1JFU1MQAEIJCgdfcmVzdWx0');

@$core.Deprecated('Use recoverchannelRequestDescriptor instead')
const RecoverchannelRequest$json = {
  '1': 'RecoverchannelRequest',
  '2': [
    {'1': 'scb', '3': 1, '4': 3, '5': 12, '10': 'scb'},
  ],
};

/// Descriptor for `RecoverchannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverchannelRequestDescriptor = $convert.base64Decode(
    'ChVSZWNvdmVyY2hhbm5lbFJlcXVlc3QSEAoDc2NiGAEgAygMUgNzY2I=');

@$core.Deprecated('Use recoverchannelResponseDescriptor instead')
const RecoverchannelResponse$json = {
  '1': 'RecoverchannelResponse',
  '2': [
    {'1': 'stubs', '3': 1, '4': 3, '5': 9, '10': 'stubs'},
  ],
};

/// Descriptor for `RecoverchannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverchannelResponseDescriptor = $convert.base64Decode(
    'ChZSZWNvdmVyY2hhbm5lbFJlc3BvbnNlEhQKBXN0dWJzGAEgAygJUgVzdHVicw==');

@$core.Deprecated('Use invoiceRequestDescriptor instead')
const InvoiceRequest$json = {
  '1': 'InvoiceRequest',
  '2': [
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
    {'1': 'fallbacks', '3': 4, '4': 3, '5': 9, '10': 'fallbacks'},
    {'1': 'preimage', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'preimage', '17': true},
    {'1': 'cltv', '3': 6, '4': 1, '5': 13, '9': 1, '10': 'cltv', '17': true},
    {'1': 'expiry', '3': 7, '4': 1, '5': 4, '9': 2, '10': 'expiry', '17': true},
    {'1': 'exposeprivatechannels', '3': 8, '4': 3, '5': 9, '10': 'exposeprivatechannels'},
    {'1': 'deschashonly', '3': 9, '4': 1, '5': 8, '9': 3, '10': 'deschashonly', '17': true},
    {'1': 'amount_msat', '3': 10, '4': 1, '5': 11, '6': '.cln.AmountOrAny', '10': 'amountMsat'},
  ],
  '8': [
    {'1': '_preimage'},
    {'1': '_cltv'},
    {'1': '_expiry'},
    {'1': '_deschashonly'},
  ],
};

/// Descriptor for `InvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoiceRequestDescriptor = $convert.base64Decode(
    'Cg5JbnZvaWNlUmVxdWVzdBIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SFAoFbG'
    'FiZWwYAyABKAlSBWxhYmVsEhwKCWZhbGxiYWNrcxgEIAMoCVIJZmFsbGJhY2tzEh8KCHByZWlt'
    'YWdlGAUgASgMSABSCHByZWltYWdliAEBEhcKBGNsdHYYBiABKA1IAVIEY2x0dogBARIbCgZleH'
    'BpcnkYByABKARIAlIGZXhwaXJ5iAEBEjQKFWV4cG9zZXByaXZhdGVjaGFubmVscxgIIAMoCVIV'
    'ZXhwb3NlcHJpdmF0ZWNoYW5uZWxzEicKDGRlc2NoYXNob25seRgJIAEoCEgDUgxkZXNjaGFzaG'
    '9ubHmIAQESMQoLYW1vdW50X21zYXQYCiABKAsyEC5jbG4uQW1vdW50T3JBbnlSCmFtb3VudE1z'
    'YXRCCwoJX3ByZWltYWdlQgcKBV9jbHR2QgkKB19leHBpcnlCDwoNX2Rlc2NoYXNob25seQ==');

@$core.Deprecated('Use invoiceResponseDescriptor instead')
const InvoiceResponse$json = {
  '1': 'InvoiceResponse',
  '2': [
    {'1': 'bolt11', '3': 1, '4': 1, '5': 9, '10': 'bolt11'},
    {'1': 'payment_hash', '3': 2, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'payment_secret', '3': 3, '4': 1, '5': 12, '10': 'paymentSecret'},
    {'1': 'expires_at', '3': 4, '4': 1, '5': 4, '10': 'expiresAt'},
    {'1': 'warning_capacity', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'warningCapacity', '17': true},
    {'1': 'warning_offline', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'warningOffline', '17': true},
    {'1': 'warning_deadends', '3': 7, '4': 1, '5': 9, '9': 2, '10': 'warningDeadends', '17': true},
    {'1': 'warning_private_unused', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'warningPrivateUnused', '17': true},
    {'1': 'warning_mpp', '3': 9, '4': 1, '5': 9, '9': 4, '10': 'warningMpp', '17': true},
    {'1': 'created_index', '3': 10, '4': 1, '5': 4, '9': 5, '10': 'createdIndex', '17': true},
  ],
  '8': [
    {'1': '_warning_capacity'},
    {'1': '_warning_offline'},
    {'1': '_warning_deadends'},
    {'1': '_warning_private_unused'},
    {'1': '_warning_mpp'},
    {'1': '_created_index'},
  ],
};

/// Descriptor for `InvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoiceResponseDescriptor = $convert.base64Decode(
    'Cg9JbnZvaWNlUmVzcG9uc2USFgoGYm9sdDExGAEgASgJUgZib2x0MTESIQoMcGF5bWVudF9oYX'
    'NoGAIgASgMUgtwYXltZW50SGFzaBIlCg5wYXltZW50X3NlY3JldBgDIAEoDFINcGF5bWVudFNl'
    'Y3JldBIdCgpleHBpcmVzX2F0GAQgASgEUglleHBpcmVzQXQSLgoQd2FybmluZ19jYXBhY2l0eR'
    'gFIAEoCUgAUg93YXJuaW5nQ2FwYWNpdHmIAQESLAoPd2FybmluZ19vZmZsaW5lGAYgASgJSAFS'
    'Dndhcm5pbmdPZmZsaW5liAEBEi4KEHdhcm5pbmdfZGVhZGVuZHMYByABKAlIAlIPd2FybmluZ0'
    'RlYWRlbmRziAEBEjkKFndhcm5pbmdfcHJpdmF0ZV91bnVzZWQYCCABKAlIA1IUd2FybmluZ1By'
    'aXZhdGVVbnVzZWSIAQESJAoLd2FybmluZ19tcHAYCSABKAlIBFIKd2FybmluZ01wcIgBARIoCg'
    '1jcmVhdGVkX2luZGV4GAogASgESAVSDGNyZWF0ZWRJbmRleIgBAUITChFfd2FybmluZ19jYXBh'
    'Y2l0eUISChBfd2FybmluZ19vZmZsaW5lQhMKEV93YXJuaW5nX2RlYWRlbmRzQhkKF193YXJuaW'
    '5nX3ByaXZhdGVfdW51c2VkQg4KDF93YXJuaW5nX21wcEIQCg5fY3JlYXRlZF9pbmRleA==');

@$core.Deprecated('Use invoicerequestRequestDescriptor instead')
const InvoicerequestRequest$json = {
  '1': 'InvoicerequestRequest',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amount'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'issuer', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'issuer', '17': true},
    {'1': 'label', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'label', '17': true},
    {'1': 'absolute_expiry', '3': 5, '4': 1, '5': 4, '9': 2, '10': 'absoluteExpiry', '17': true},
    {'1': 'single_use', '3': 6, '4': 1, '5': 8, '9': 3, '10': 'singleUse', '17': true},
  ],
  '8': [
    {'1': '_issuer'},
    {'1': '_label'},
    {'1': '_absolute_expiry'},
    {'1': '_single_use'},
  ],
};

/// Descriptor for `InvoicerequestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoicerequestRequestDescriptor = $convert.base64Decode(
    'ChVJbnZvaWNlcmVxdWVzdFJlcXVlc3QSIwoGYW1vdW50GAEgASgLMgsuY2xuLkFtb3VudFIGYW'
    '1vdW50EiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIbCgZpc3N1ZXIYAyABKAlI'
    'AFIGaXNzdWVyiAEBEhkKBWxhYmVsGAQgASgJSAFSBWxhYmVsiAEBEiwKD2Fic29sdXRlX2V4cG'
    'lyeRgFIAEoBEgCUg5hYnNvbHV0ZUV4cGlyeYgBARIiCgpzaW5nbGVfdXNlGAYgASgISANSCXNp'
    'bmdsZVVzZYgBAUIJCgdfaXNzdWVyQggKBl9sYWJlbEISChBfYWJzb2x1dGVfZXhwaXJ5Qg0KC1'
    '9zaW5nbGVfdXNl');

@$core.Deprecated('Use invoicerequestResponseDescriptor instead')
const InvoicerequestResponse$json = {
  '1': 'InvoicerequestResponse',
  '2': [
    {'1': 'invreq_id', '3': 1, '4': 1, '5': 12, '10': 'invreqId'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {'1': 'single_use', '3': 3, '4': 1, '5': 8, '10': 'singleUse'},
    {'1': 'bolt12', '3': 4, '4': 1, '5': 9, '10': 'bolt12'},
    {'1': 'used', '3': 5, '4': 1, '5': 8, '10': 'used'},
    {'1': 'label', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
  ],
  '8': [
    {'1': '_label'},
  ],
};

/// Descriptor for `InvoicerequestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoicerequestResponseDescriptor = $convert.base64Decode(
    'ChZJbnZvaWNlcmVxdWVzdFJlc3BvbnNlEhsKCWludnJlcV9pZBgBIAEoDFIIaW52cmVxSWQSFg'
    'oGYWN0aXZlGAIgASgIUgZhY3RpdmUSHQoKc2luZ2xlX3VzZRgDIAEoCFIJc2luZ2xlVXNlEhYK'
    'BmJvbHQxMhgEIAEoCVIGYm9sdDEyEhIKBHVzZWQYBSABKAhSBHVzZWQSGQoFbGFiZWwYBiABKA'
    'lIAFIFbGFiZWyIAQFCCAoGX2xhYmVs');

@$core.Deprecated('Use disableinvoicerequestRequestDescriptor instead')
const DisableinvoicerequestRequest$json = {
  '1': 'DisableinvoicerequestRequest',
  '2': [
    {'1': 'invreq_id', '3': 1, '4': 1, '5': 9, '10': 'invreqId'},
  ],
};

/// Descriptor for `DisableinvoicerequestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disableinvoicerequestRequestDescriptor = $convert.base64Decode(
    'ChxEaXNhYmxlaW52b2ljZXJlcXVlc3RSZXF1ZXN0EhsKCWludnJlcV9pZBgBIAEoCVIIaW52cm'
    'VxSWQ=');

@$core.Deprecated('Use disableinvoicerequestResponseDescriptor instead')
const DisableinvoicerequestResponse$json = {
  '1': 'DisableinvoicerequestResponse',
  '2': [
    {'1': 'invreq_id', '3': 1, '4': 1, '5': 12, '10': 'invreqId'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {'1': 'single_use', '3': 3, '4': 1, '5': 8, '10': 'singleUse'},
    {'1': 'bolt12', '3': 4, '4': 1, '5': 9, '10': 'bolt12'},
    {'1': 'used', '3': 5, '4': 1, '5': 8, '10': 'used'},
    {'1': 'label', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
  ],
  '8': [
    {'1': '_label'},
  ],
};

/// Descriptor for `DisableinvoicerequestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disableinvoicerequestResponseDescriptor = $convert.base64Decode(
    'Ch1EaXNhYmxlaW52b2ljZXJlcXVlc3RSZXNwb25zZRIbCglpbnZyZXFfaWQYASABKAxSCGludn'
    'JlcUlkEhYKBmFjdGl2ZRgCIAEoCFIGYWN0aXZlEh0KCnNpbmdsZV91c2UYAyABKAhSCXNpbmds'
    'ZVVzZRIWCgZib2x0MTIYBCABKAlSBmJvbHQxMhISCgR1c2VkGAUgASgIUgR1c2VkEhkKBWxhYm'
    'VsGAYgASgJSABSBWxhYmVsiAEBQggKBl9sYWJlbA==');

@$core.Deprecated('Use listinvoicerequestsRequestDescriptor instead')
const ListinvoicerequestsRequest$json = {
  '1': 'ListinvoicerequestsRequest',
  '2': [
    {'1': 'invreq_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'invreqId', '17': true},
    {'1': 'active_only', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'activeOnly', '17': true},
  ],
  '8': [
    {'1': '_invreq_id'},
    {'1': '_active_only'},
  ],
};

/// Descriptor for `ListinvoicerequestsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listinvoicerequestsRequestDescriptor = $convert.base64Decode(
    'ChpMaXN0aW52b2ljZXJlcXVlc3RzUmVxdWVzdBIgCglpbnZyZXFfaWQYASABKAlIAFIIaW52cm'
    'VxSWSIAQESJAoLYWN0aXZlX29ubHkYAiABKAhIAVIKYWN0aXZlT25seYgBAUIMCgpfaW52cmVx'
    'X2lkQg4KDF9hY3RpdmVfb25seQ==');

@$core.Deprecated('Use listinvoicerequestsResponseDescriptor instead')
const ListinvoicerequestsResponse$json = {
  '1': 'ListinvoicerequestsResponse',
  '2': [
    {'1': 'invoicerequests', '3': 1, '4': 3, '5': 11, '6': '.cln.ListinvoicerequestsInvoicerequests', '10': 'invoicerequests'},
  ],
};

/// Descriptor for `ListinvoicerequestsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listinvoicerequestsResponseDescriptor = $convert.base64Decode(
    'ChtMaXN0aW52b2ljZXJlcXVlc3RzUmVzcG9uc2USUQoPaW52b2ljZXJlcXVlc3RzGAEgAygLMi'
    'cuY2xuLkxpc3RpbnZvaWNlcmVxdWVzdHNJbnZvaWNlcmVxdWVzdHNSD2ludm9pY2VyZXF1ZXN0'
    'cw==');

@$core.Deprecated('Use listinvoicerequestsInvoicerequestsDescriptor instead')
const ListinvoicerequestsInvoicerequests$json = {
  '1': 'ListinvoicerequestsInvoicerequests',
  '2': [
    {'1': 'invreq_id', '3': 1, '4': 1, '5': 12, '10': 'invreqId'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {'1': 'single_use', '3': 3, '4': 1, '5': 8, '10': 'singleUse'},
    {'1': 'bolt12', '3': 4, '4': 1, '5': 9, '10': 'bolt12'},
    {'1': 'used', '3': 5, '4': 1, '5': 8, '10': 'used'},
    {'1': 'label', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
  ],
  '8': [
    {'1': '_label'},
  ],
};

/// Descriptor for `ListinvoicerequestsInvoicerequests`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listinvoicerequestsInvoicerequestsDescriptor = $convert.base64Decode(
    'CiJMaXN0aW52b2ljZXJlcXVlc3RzSW52b2ljZXJlcXVlc3RzEhsKCWludnJlcV9pZBgBIAEoDF'
    'IIaW52cmVxSWQSFgoGYWN0aXZlGAIgASgIUgZhY3RpdmUSHQoKc2luZ2xlX3VzZRgDIAEoCFIJ'
    'c2luZ2xlVXNlEhYKBmJvbHQxMhgEIAEoCVIGYm9sdDEyEhIKBHVzZWQYBSABKAhSBHVzZWQSGQ'
    'oFbGFiZWwYBiABKAlIAFIFbGFiZWyIAQFCCAoGX2xhYmVs');

@$core.Deprecated('Use listdatastoreRequestDescriptor instead')
const ListdatastoreRequest$json = {
  '1': 'ListdatastoreRequest',
  '2': [
    {'1': 'key', '3': 2, '4': 3, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `ListdatastoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listdatastoreRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0ZGF0YXN0b3JlUmVxdWVzdBIQCgNrZXkYAiADKAlSA2tleQ==');

@$core.Deprecated('Use listdatastoreResponseDescriptor instead')
const ListdatastoreResponse$json = {
  '1': 'ListdatastoreResponse',
  '2': [
    {'1': 'datastore', '3': 1, '4': 3, '5': 11, '6': '.cln.ListdatastoreDatastore', '10': 'datastore'},
  ],
};

/// Descriptor for `ListdatastoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listdatastoreResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0ZGF0YXN0b3JlUmVzcG9uc2USOQoJZGF0YXN0b3JlGAEgAygLMhsuY2xuLkxpc3RkYX'
    'Rhc3RvcmVEYXRhc3RvcmVSCWRhdGFzdG9yZQ==');

@$core.Deprecated('Use listdatastoreDatastoreDescriptor instead')
const ListdatastoreDatastore$json = {
  '1': 'ListdatastoreDatastore',
  '2': [
    {'1': 'key', '3': 1, '4': 3, '5': 9, '10': 'key'},
    {'1': 'generation', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'generation', '17': true},
    {'1': 'hex', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'hex', '17': true},
    {'1': 'string', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'string', '17': true},
  ],
  '8': [
    {'1': '_generation'},
    {'1': '_hex'},
    {'1': '_string'},
  ],
};

/// Descriptor for `ListdatastoreDatastore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listdatastoreDatastoreDescriptor = $convert.base64Decode(
    'ChZMaXN0ZGF0YXN0b3JlRGF0YXN0b3JlEhAKA2tleRgBIAMoCVIDa2V5EiMKCmdlbmVyYXRpb2'
    '4YAiABKARIAFIKZ2VuZXJhdGlvbogBARIVCgNoZXgYAyABKAxIAVIDaGV4iAEBEhsKBnN0cmlu'
    'ZxgEIAEoCUgCUgZzdHJpbmeIAQFCDQoLX2dlbmVyYXRpb25CBgoEX2hleEIJCgdfc3RyaW5n');

@$core.Deprecated('Use listinvoicesRequestDescriptor instead')
const ListinvoicesRequest$json = {
  '1': 'ListinvoicesRequest',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
    {'1': 'invstring', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'invstring', '17': true},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '9': 2, '10': 'paymentHash', '17': true},
    {'1': 'offer_id', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'offerId', '17': true},
    {'1': 'index', '3': 5, '4': 1, '5': 14, '6': '.cln.ListinvoicesRequest.ListinvoicesIndex', '9': 4, '10': 'index', '17': true},
    {'1': 'start', '3': 6, '4': 1, '5': 4, '9': 5, '10': 'start', '17': true},
    {'1': 'limit', '3': 7, '4': 1, '5': 13, '9': 6, '10': 'limit', '17': true},
  ],
  '4': [ListinvoicesRequest_ListinvoicesIndex$json],
  '8': [
    {'1': '_label'},
    {'1': '_invstring'},
    {'1': '_payment_hash'},
    {'1': '_offer_id'},
    {'1': '_index'},
    {'1': '_start'},
    {'1': '_limit'},
  ],
};

@$core.Deprecated('Use listinvoicesRequestDescriptor instead')
const ListinvoicesRequest_ListinvoicesIndex$json = {
  '1': 'ListinvoicesIndex',
  '2': [
    {'1': 'CREATED', '2': 0},
    {'1': 'UPDATED', '2': 1},
  ],
};

/// Descriptor for `ListinvoicesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listinvoicesRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0aW52b2ljZXNSZXF1ZXN0EhkKBWxhYmVsGAEgASgJSABSBWxhYmVsiAEBEiEKCWludn'
    'N0cmluZxgCIAEoCUgBUglpbnZzdHJpbmeIAQESJgoMcGF5bWVudF9oYXNoGAMgASgMSAJSC3Bh'
    'eW1lbnRIYXNoiAEBEh4KCG9mZmVyX2lkGAQgASgJSANSB29mZmVySWSIAQESRQoFaW5kZXgYBS'
    'ABKA4yKi5jbG4uTGlzdGludm9pY2VzUmVxdWVzdC5MaXN0aW52b2ljZXNJbmRleEgEUgVpbmRl'
    'eIgBARIZCgVzdGFydBgGIAEoBEgFUgVzdGFydIgBARIZCgVsaW1pdBgHIAEoDUgGUgVsaW1pdI'
    'gBASItChFMaXN0aW52b2ljZXNJbmRleBILCgdDUkVBVEVEEAASCwoHVVBEQVRFRBABQggKBl9s'
    'YWJlbEIMCgpfaW52c3RyaW5nQg8KDV9wYXltZW50X2hhc2hCCwoJX29mZmVyX2lkQggKBl9pbm'
    'RleEIICgZfc3RhcnRCCAoGX2xpbWl0');

@$core.Deprecated('Use listinvoicesResponseDescriptor instead')
const ListinvoicesResponse$json = {
  '1': 'ListinvoicesResponse',
  '2': [
    {'1': 'invoices', '3': 1, '4': 3, '5': 11, '6': '.cln.ListinvoicesInvoices', '10': 'invoices'},
  ],
};

/// Descriptor for `ListinvoicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listinvoicesResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0aW52b2ljZXNSZXNwb25zZRI1CghpbnZvaWNlcxgBIAMoCzIZLmNsbi5MaXN0aW52b2'
    'ljZXNJbnZvaWNlc1IIaW52b2ljZXM=');

@$core.Deprecated('Use listinvoicesInvoicesDescriptor instead')
const ListinvoicesInvoices$json = {
  '1': 'ListinvoicesInvoices',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.cln.ListinvoicesInvoices.ListinvoicesInvoicesStatus', '10': 'status'},
    {'1': 'expires_at', '3': 5, '4': 1, '5': 4, '10': 'expiresAt'},
    {'1': 'amount_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'amountMsat', '17': true},
    {'1': 'bolt11', '3': 7, '4': 1, '5': 9, '9': 2, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'bolt12', '17': true},
    {'1': 'local_offer_id', '3': 9, '4': 1, '5': 12, '9': 4, '10': 'localOfferId', '17': true},
    {'1': 'pay_index', '3': 11, '4': 1, '5': 4, '9': 5, '10': 'payIndex', '17': true},
    {'1': 'amount_received_msat', '3': 12, '4': 1, '5': 11, '6': '.cln.Amount', '9': 6, '10': 'amountReceivedMsat', '17': true},
    {'1': 'paid_at', '3': 13, '4': 1, '5': 4, '9': 7, '10': 'paidAt', '17': true},
    {'1': 'payment_preimage', '3': 14, '4': 1, '5': 12, '9': 8, '10': 'paymentPreimage', '17': true},
    {'1': 'invreq_payer_note', '3': 15, '4': 1, '5': 9, '9': 9, '10': 'invreqPayerNote', '17': true},
    {'1': 'created_index', '3': 16, '4': 1, '5': 4, '9': 10, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 17, '4': 1, '5': 4, '9': 11, '10': 'updatedIndex', '17': true},
    {'1': 'paid_outpoint', '3': 18, '4': 1, '5': 11, '6': '.cln.ListinvoicesInvoicesPaid_outpoint', '9': 12, '10': 'paidOutpoint', '17': true},
  ],
  '4': [ListinvoicesInvoices_ListinvoicesInvoicesStatus$json],
  '8': [
    {'1': '_description'},
    {'1': '_amount_msat'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_local_offer_id'},
    {'1': '_pay_index'},
    {'1': '_amount_received_msat'},
    {'1': '_paid_at'},
    {'1': '_payment_preimage'},
    {'1': '_invreq_payer_note'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
    {'1': '_paid_outpoint'},
  ],
};

@$core.Deprecated('Use listinvoicesInvoicesDescriptor instead')
const ListinvoicesInvoices_ListinvoicesInvoicesStatus$json = {
  '1': 'ListinvoicesInvoicesStatus',
  '2': [
    {'1': 'UNPAID', '2': 0},
    {'1': 'PAID', '2': 1},
    {'1': 'EXPIRED', '2': 2},
  ],
};

/// Descriptor for `ListinvoicesInvoices`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listinvoicesInvoicesDescriptor = $convert.base64Decode(
    'ChRMaXN0aW52b2ljZXNJbnZvaWNlcxIUCgVsYWJlbBgBIAEoCVIFbGFiZWwSJQoLZGVzY3JpcH'
    'Rpb24YAiABKAlIAFILZGVzY3JpcHRpb26IAQESIQoMcGF5bWVudF9oYXNoGAMgASgMUgtwYXlt'
    'ZW50SGFzaBJMCgZzdGF0dXMYBCABKA4yNC5jbG4uTGlzdGludm9pY2VzSW52b2ljZXMuTGlzdG'
    'ludm9pY2VzSW52b2ljZXNTdGF0dXNSBnN0YXR1cxIdCgpleHBpcmVzX2F0GAUgASgEUglleHBp'
    'cmVzQXQSMQoLYW1vdW50X21zYXQYBiABKAsyCy5jbG4uQW1vdW50SAFSCmFtb3VudE1zYXSIAQ'
    'ESGwoGYm9sdDExGAcgASgJSAJSBmJvbHQxMYgBARIbCgZib2x0MTIYCCABKAlIA1IGYm9sdDEy'
    'iAEBEikKDmxvY2FsX29mZmVyX2lkGAkgASgMSARSDGxvY2FsT2ZmZXJJZIgBARIgCglwYXlfaW'
    '5kZXgYCyABKARIBVIIcGF5SW5kZXiIAQESQgoUYW1vdW50X3JlY2VpdmVkX21zYXQYDCABKAsy'
    'Cy5jbG4uQW1vdW50SAZSEmFtb3VudFJlY2VpdmVkTXNhdIgBARIcCgdwYWlkX2F0GA0gASgESA'
    'dSBnBhaWRBdIgBARIuChBwYXltZW50X3ByZWltYWdlGA4gASgMSAhSD3BheW1lbnRQcmVpbWFn'
    'ZYgBARIvChFpbnZyZXFfcGF5ZXJfbm90ZRgPIAEoCUgJUg9pbnZyZXFQYXllck5vdGWIAQESKA'
    'oNY3JlYXRlZF9pbmRleBgQIAEoBEgKUgxjcmVhdGVkSW5kZXiIAQESKAoNdXBkYXRlZF9pbmRl'
    'eBgRIAEoBEgLUgx1cGRhdGVkSW5kZXiIAQESUAoNcGFpZF9vdXRwb2ludBgSIAEoCzImLmNsbi'
    '5MaXN0aW52b2ljZXNJbnZvaWNlc1BhaWRfb3V0cG9pbnRIDFIMcGFpZE91dHBvaW50iAEBIj8K'
    'Gkxpc3RpbnZvaWNlc0ludm9pY2VzU3RhdHVzEgoKBlVOUEFJRBAAEggKBFBBSUQQARILCgdFWF'
    'BJUkVEEAJCDgoMX2Rlc2NyaXB0aW9uQg4KDF9hbW91bnRfbXNhdEIJCgdfYm9sdDExQgkKB19i'
    'b2x0MTJCEQoPX2xvY2FsX29mZmVyX2lkQgwKCl9wYXlfaW5kZXhCFwoVX2Ftb3VudF9yZWNlaX'
    'ZlZF9tc2F0QgoKCF9wYWlkX2F0QhMKEV9wYXltZW50X3ByZWltYWdlQhQKEl9pbnZyZXFfcGF5'
    'ZXJfbm90ZUIQCg5fY3JlYXRlZF9pbmRleEIQCg5fdXBkYXRlZF9pbmRleEIQCg5fcGFpZF9vdX'
    'Rwb2ludA==');

@$core.Deprecated('Use listinvoicesInvoicesPaid_outpointDescriptor instead')
const ListinvoicesInvoicesPaid_outpoint$json = {
  '1': 'ListinvoicesInvoicesPaid_outpoint',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'outnum', '3': 2, '4': 1, '5': 13, '10': 'outnum'},
  ],
};

/// Descriptor for `ListinvoicesInvoicesPaid_outpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listinvoicesInvoicesPaid_outpointDescriptor = $convert.base64Decode(
    'CiFMaXN0aW52b2ljZXNJbnZvaWNlc1BhaWRfb3V0cG9pbnQSEgoEdHhpZBgBIAEoDFIEdHhpZB'
    'IWCgZvdXRudW0YAiABKA1SBm91dG51bQ==');

@$core.Deprecated('Use sendonionRequestDescriptor instead')
const SendonionRequest$json = {
  '1': 'SendonionRequest',
  '2': [
    {'1': 'onion', '3': 1, '4': 1, '5': 12, '10': 'onion'},
    {'1': 'first_hop', '3': 2, '4': 1, '5': 11, '6': '.cln.SendonionFirst_hop', '10': 'firstHop'},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'label', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
    {'1': 'shared_secrets', '3': 5, '4': 3, '5': 12, '10': 'sharedSecrets'},
    {'1': 'partid', '3': 6, '4': 1, '5': 13, '9': 1, '10': 'partid', '17': true},
    {'1': 'bolt11', '3': 7, '4': 1, '5': 9, '9': 2, '10': 'bolt11', '17': true},
    {'1': 'destination', '3': 9, '4': 1, '5': 12, '9': 3, '10': 'destination', '17': true},
    {'1': 'groupid', '3': 11, '4': 1, '5': 4, '9': 4, '10': 'groupid', '17': true},
    {'1': 'amount_msat', '3': 12, '4': 1, '5': 11, '6': '.cln.Amount', '9': 5, '10': 'amountMsat', '17': true},
    {'1': 'localinvreqid', '3': 13, '4': 1, '5': 12, '9': 6, '10': 'localinvreqid', '17': true},
    {'1': 'description', '3': 14, '4': 1, '5': 9, '9': 7, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_label'},
    {'1': '_partid'},
    {'1': '_bolt11'},
    {'1': '_destination'},
    {'1': '_groupid'},
    {'1': '_amount_msat'},
    {'1': '_localinvreqid'},
    {'1': '_description'},
  ],
};

/// Descriptor for `SendonionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendonionRequestDescriptor = $convert.base64Decode(
    'ChBTZW5kb25pb25SZXF1ZXN0EhQKBW9uaW9uGAEgASgMUgVvbmlvbhI0CglmaXJzdF9ob3AYAi'
    'ABKAsyFy5jbG4uU2VuZG9uaW9uRmlyc3RfaG9wUghmaXJzdEhvcBIhCgxwYXltZW50X2hhc2gY'
    'AyABKAxSC3BheW1lbnRIYXNoEhkKBWxhYmVsGAQgASgJSABSBWxhYmVsiAEBEiUKDnNoYXJlZF'
    '9zZWNyZXRzGAUgAygMUg1zaGFyZWRTZWNyZXRzEhsKBnBhcnRpZBgGIAEoDUgBUgZwYXJ0aWSI'
    'AQESGwoGYm9sdDExGAcgASgJSAJSBmJvbHQxMYgBARIlCgtkZXN0aW5hdGlvbhgJIAEoDEgDUg'
    'tkZXN0aW5hdGlvbogBARIdCgdncm91cGlkGAsgASgESARSB2dyb3VwaWSIAQESMQoLYW1vdW50'
    'X21zYXQYDCABKAsyCy5jbG4uQW1vdW50SAVSCmFtb3VudE1zYXSIAQESKQoNbG9jYWxpbnZyZX'
    'FpZBgNIAEoDEgGUg1sb2NhbGludnJlcWlkiAEBEiUKC2Rlc2NyaXB0aW9uGA4gASgJSAdSC2Rl'
    'c2NyaXB0aW9uiAEBQggKBl9sYWJlbEIJCgdfcGFydGlkQgkKB19ib2x0MTFCDgoMX2Rlc3Rpbm'
    'F0aW9uQgoKCF9ncm91cGlkQg4KDF9hbW91bnRfbXNhdEIQCg5fbG9jYWxpbnZyZXFpZEIOCgxf'
    'ZGVzY3JpcHRpb24=');

@$core.Deprecated('Use sendonionResponseDescriptor instead')
const SendonionResponse$json = {
  '1': 'SendonionResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'payment_hash', '3': 2, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.cln.SendonionResponse.SendonionStatus', '10': 'status'},
    {'1': 'amount_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'destination', '3': 5, '4': 1, '5': 12, '9': 1, '10': 'destination', '17': true},
    {'1': 'created_at', '3': 6, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'amount_sent_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountSentMsat'},
    {'1': 'label', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'label', '17': true},
    {'1': 'bolt11', '3': 9, '4': 1, '5': 9, '9': 3, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 10, '4': 1, '5': 9, '9': 4, '10': 'bolt12', '17': true},
    {'1': 'payment_preimage', '3': 11, '4': 1, '5': 12, '9': 5, '10': 'paymentPreimage', '17': true},
    {'1': 'message', '3': 12, '4': 1, '5': 9, '9': 6, '10': 'message', '17': true},
    {'1': 'partid', '3': 13, '4': 1, '5': 4, '9': 7, '10': 'partid', '17': true},
    {'1': 'created_index', '3': 14, '4': 1, '5': 4, '9': 8, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 15, '4': 1, '5': 4, '9': 9, '10': 'updatedIndex', '17': true},
  ],
  '4': [SendonionResponse_SendonionStatus$json],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_destination'},
    {'1': '_label'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_payment_preimage'},
    {'1': '_message'},
    {'1': '_partid'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
  ],
};

@$core.Deprecated('Use sendonionResponseDescriptor instead')
const SendonionResponse_SendonionStatus$json = {
  '1': 'SendonionStatus',
  '2': [
    {'1': 'PENDING', '2': 0},
    {'1': 'COMPLETE', '2': 1},
  ],
};

/// Descriptor for `SendonionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendonionResponseDescriptor = $convert.base64Decode(
    'ChFTZW5kb25pb25SZXNwb25zZRIOCgJpZBgBIAEoBFICaWQSIQoMcGF5bWVudF9oYXNoGAIgAS'
    'gMUgtwYXltZW50SGFzaBI+CgZzdGF0dXMYAyABKA4yJi5jbG4uU2VuZG9uaW9uUmVzcG9uc2Uu'
    'U2VuZG9uaW9uU3RhdHVzUgZzdGF0dXMSMQoLYW1vdW50X21zYXQYBCABKAsyCy5jbG4uQW1vdW'
    '50SABSCmFtb3VudE1zYXSIAQESJQoLZGVzdGluYXRpb24YBSABKAxIAVILZGVzdGluYXRpb26I'
    'AQESHQoKY3JlYXRlZF9hdBgGIAEoBFIJY3JlYXRlZEF0EjUKEGFtb3VudF9zZW50X21zYXQYBy'
    'ABKAsyCy5jbG4uQW1vdW50Ug5hbW91bnRTZW50TXNhdBIZCgVsYWJlbBgIIAEoCUgCUgVsYWJl'
    'bIgBARIbCgZib2x0MTEYCSABKAlIA1IGYm9sdDExiAEBEhsKBmJvbHQxMhgKIAEoCUgEUgZib2'
    'x0MTKIAQESLgoQcGF5bWVudF9wcmVpbWFnZRgLIAEoDEgFUg9wYXltZW50UHJlaW1hZ2WIAQES'
    'HQoHbWVzc2FnZRgMIAEoCUgGUgdtZXNzYWdliAEBEhsKBnBhcnRpZBgNIAEoBEgHUgZwYXJ0aW'
    'SIAQESKAoNY3JlYXRlZF9pbmRleBgOIAEoBEgIUgxjcmVhdGVkSW5kZXiIAQESKAoNdXBkYXRl'
    'ZF9pbmRleBgPIAEoBEgJUgx1cGRhdGVkSW5kZXiIAQEiLAoPU2VuZG9uaW9uU3RhdHVzEgsKB1'
    'BFTkRJTkcQABIMCghDT01QTEVURRABQg4KDF9hbW91bnRfbXNhdEIOCgxfZGVzdGluYXRpb25C'
    'CAoGX2xhYmVsQgkKB19ib2x0MTFCCQoHX2JvbHQxMkITChFfcGF5bWVudF9wcmVpbWFnZUIKCg'
    'hfbWVzc2FnZUIJCgdfcGFydGlkQhAKDl9jcmVhdGVkX2luZGV4QhAKDl91cGRhdGVkX2luZGV4');

@$core.Deprecated('Use sendonionFirst_hopDescriptor instead')
const SendonionFirst_hop$json = {
  '1': 'SendonionFirst_hop',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'amount_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'delay', '3': 3, '4': 1, '5': 13, '10': 'delay'},
  ],
};

/// Descriptor for `SendonionFirst_hop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendonionFirst_hopDescriptor = $convert.base64Decode(
    'ChJTZW5kb25pb25GaXJzdF9ob3ASDgoCaWQYASABKAxSAmlkEiwKC2Ftb3VudF9tc2F0GAIgAS'
    'gLMgsuY2xuLkFtb3VudFIKYW1vdW50TXNhdBIUCgVkZWxheRgDIAEoDVIFZGVsYXk=');

@$core.Deprecated('Use listsendpaysRequestDescriptor instead')
const ListsendpaysRequest$json = {
  '1': 'ListsendpaysRequest',
  '2': [
    {'1': 'bolt11', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'bolt11', '17': true},
    {'1': 'payment_hash', '3': 2, '4': 1, '5': 12, '9': 1, '10': 'paymentHash', '17': true},
    {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.cln.ListsendpaysRequest.ListsendpaysStatus', '9': 2, '10': 'status', '17': true},
    {'1': 'index', '3': 4, '4': 1, '5': 14, '6': '.cln.ListsendpaysRequest.ListsendpaysIndex', '9': 3, '10': 'index', '17': true},
    {'1': 'start', '3': 5, '4': 1, '5': 4, '9': 4, '10': 'start', '17': true},
    {'1': 'limit', '3': 6, '4': 1, '5': 13, '9': 5, '10': 'limit', '17': true},
  ],
  '4': [ListsendpaysRequest_ListsendpaysStatus$json, ListsendpaysRequest_ListsendpaysIndex$json],
  '8': [
    {'1': '_bolt11'},
    {'1': '_payment_hash'},
    {'1': '_status'},
    {'1': '_index'},
    {'1': '_start'},
    {'1': '_limit'},
  ],
};

@$core.Deprecated('Use listsendpaysRequestDescriptor instead')
const ListsendpaysRequest_ListsendpaysStatus$json = {
  '1': 'ListsendpaysStatus',
  '2': [
    {'1': 'PENDING', '2': 0},
    {'1': 'COMPLETE', '2': 1},
    {'1': 'FAILED', '2': 2},
  ],
};

@$core.Deprecated('Use listsendpaysRequestDescriptor instead')
const ListsendpaysRequest_ListsendpaysIndex$json = {
  '1': 'ListsendpaysIndex',
  '2': [
    {'1': 'CREATED', '2': 0},
    {'1': 'UPDATED', '2': 1},
  ],
};

/// Descriptor for `ListsendpaysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listsendpaysRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0c2VuZHBheXNSZXF1ZXN0EhsKBmJvbHQxMRgBIAEoCUgAUgZib2x0MTGIAQESJgoMcG'
    'F5bWVudF9oYXNoGAIgASgMSAFSC3BheW1lbnRIYXNoiAEBEkgKBnN0YXR1cxgDIAEoDjIrLmNs'
    'bi5MaXN0c2VuZHBheXNSZXF1ZXN0Lkxpc3RzZW5kcGF5c1N0YXR1c0gCUgZzdGF0dXOIAQESRQ'
    'oFaW5kZXgYBCABKA4yKi5jbG4uTGlzdHNlbmRwYXlzUmVxdWVzdC5MaXN0c2VuZHBheXNJbmRl'
    'eEgDUgVpbmRleIgBARIZCgVzdGFydBgFIAEoBEgEUgVzdGFydIgBARIZCgVsaW1pdBgGIAEoDU'
    'gFUgVsaW1pdIgBASI7ChJMaXN0c2VuZHBheXNTdGF0dXMSCwoHUEVORElORxAAEgwKCENPTVBM'
    'RVRFEAESCgoGRkFJTEVEEAIiLQoRTGlzdHNlbmRwYXlzSW5kZXgSCwoHQ1JFQVRFRBAAEgsKB1'
    'VQREFURUQQAUIJCgdfYm9sdDExQg8KDV9wYXltZW50X2hhc2hCCQoHX3N0YXR1c0IICgZfaW5k'
    'ZXhCCAoGX3N0YXJ0QggKBl9saW1pdA==');

@$core.Deprecated('Use listsendpaysResponseDescriptor instead')
const ListsendpaysResponse$json = {
  '1': 'ListsendpaysResponse',
  '2': [
    {'1': 'payments', '3': 1, '4': 3, '5': 11, '6': '.cln.ListsendpaysPayments', '10': 'payments'},
  ],
};

/// Descriptor for `ListsendpaysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listsendpaysResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0c2VuZHBheXNSZXNwb25zZRI1CghwYXltZW50cxgBIAMoCzIZLmNsbi5MaXN0c2VuZH'
    'BheXNQYXltZW50c1IIcGF5bWVudHM=');

@$core.Deprecated('Use listsendpaysPaymentsDescriptor instead')
const ListsendpaysPayments$json = {
  '1': 'ListsendpaysPayments',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'groupid', '3': 2, '4': 1, '5': 4, '10': 'groupid'},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.cln.ListsendpaysPayments.ListsendpaysPaymentsStatus', '10': 'status'},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'destination', '3': 6, '4': 1, '5': 12, '9': 1, '10': 'destination', '17': true},
    {'1': 'created_at', '3': 7, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'amount_sent_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountSentMsat'},
    {'1': 'label', '3': 9, '4': 1, '5': 9, '9': 2, '10': 'label', '17': true},
    {'1': 'bolt11', '3': 10, '4': 1, '5': 9, '9': 3, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 11, '4': 1, '5': 9, '9': 4, '10': 'bolt12', '17': true},
    {'1': 'payment_preimage', '3': 12, '4': 1, '5': 12, '9': 5, '10': 'paymentPreimage', '17': true},
    {'1': 'erroronion', '3': 13, '4': 1, '5': 12, '9': 6, '10': 'erroronion', '17': true},
    {'1': 'description', '3': 14, '4': 1, '5': 9, '9': 7, '10': 'description', '17': true},
    {'1': 'partid', '3': 15, '4': 1, '5': 4, '9': 8, '10': 'partid', '17': true},
    {'1': 'created_index', '3': 16, '4': 1, '5': 4, '9': 9, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 17, '4': 1, '5': 4, '9': 10, '10': 'updatedIndex', '17': true},
    {'1': 'completed_at', '3': 18, '4': 1, '5': 4, '9': 11, '10': 'completedAt', '17': true},
  ],
  '4': [ListsendpaysPayments_ListsendpaysPaymentsStatus$json],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_destination'},
    {'1': '_label'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_payment_preimage'},
    {'1': '_erroronion'},
    {'1': '_description'},
    {'1': '_partid'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
    {'1': '_completed_at'},
  ],
};

@$core.Deprecated('Use listsendpaysPaymentsDescriptor instead')
const ListsendpaysPayments_ListsendpaysPaymentsStatus$json = {
  '1': 'ListsendpaysPaymentsStatus',
  '2': [
    {'1': 'PENDING', '2': 0},
    {'1': 'FAILED', '2': 1},
    {'1': 'COMPLETE', '2': 2},
  ],
};

/// Descriptor for `ListsendpaysPayments`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listsendpaysPaymentsDescriptor = $convert.base64Decode(
    'ChRMaXN0c2VuZHBheXNQYXltZW50cxIOCgJpZBgBIAEoBFICaWQSGAoHZ3JvdXBpZBgCIAEoBF'
    'IHZ3JvdXBpZBIhCgxwYXltZW50X2hhc2gYAyABKAxSC3BheW1lbnRIYXNoEkwKBnN0YXR1cxgE'
    'IAEoDjI0LmNsbi5MaXN0c2VuZHBheXNQYXltZW50cy5MaXN0c2VuZHBheXNQYXltZW50c1N0YX'
    'R1c1IGc3RhdHVzEjEKC2Ftb3VudF9tc2F0GAUgASgLMgsuY2xuLkFtb3VudEgAUgphbW91bnRN'
    'c2F0iAEBEiUKC2Rlc3RpbmF0aW9uGAYgASgMSAFSC2Rlc3RpbmF0aW9uiAEBEh0KCmNyZWF0ZW'
    'RfYXQYByABKARSCWNyZWF0ZWRBdBI1ChBhbW91bnRfc2VudF9tc2F0GAggASgLMgsuY2xuLkFt'
    'b3VudFIOYW1vdW50U2VudE1zYXQSGQoFbGFiZWwYCSABKAlIAlIFbGFiZWyIAQESGwoGYm9sdD'
    'ExGAogASgJSANSBmJvbHQxMYgBARIbCgZib2x0MTIYCyABKAlIBFIGYm9sdDEyiAEBEi4KEHBh'
    'eW1lbnRfcHJlaW1hZ2UYDCABKAxIBVIPcGF5bWVudFByZWltYWdliAEBEiMKCmVycm9yb25pb2'
    '4YDSABKAxIBlIKZXJyb3JvbmlvbogBARIlCgtkZXNjcmlwdGlvbhgOIAEoCUgHUgtkZXNjcmlw'
    'dGlvbogBARIbCgZwYXJ0aWQYDyABKARICFIGcGFydGlkiAEBEigKDWNyZWF0ZWRfaW5kZXgYEC'
    'ABKARICVIMY3JlYXRlZEluZGV4iAEBEigKDXVwZGF0ZWRfaW5kZXgYESABKARIClIMdXBkYXRl'
    'ZEluZGV4iAEBEiYKDGNvbXBsZXRlZF9hdBgSIAEoBEgLUgtjb21wbGV0ZWRBdIgBASJDChpMaX'
    'N0c2VuZHBheXNQYXltZW50c1N0YXR1cxILCgdQRU5ESU5HEAASCgoGRkFJTEVEEAESDAoIQ09N'
    'UExFVEUQAkIOCgxfYW1vdW50X21zYXRCDgoMX2Rlc3RpbmF0aW9uQggKBl9sYWJlbEIJCgdfYm'
    '9sdDExQgkKB19ib2x0MTJCEwoRX3BheW1lbnRfcHJlaW1hZ2VCDQoLX2Vycm9yb25pb25CDgoM'
    'X2Rlc2NyaXB0aW9uQgkKB19wYXJ0aWRCEAoOX2NyZWF0ZWRfaW5kZXhCEAoOX3VwZGF0ZWRfaW'
    '5kZXhCDwoNX2NvbXBsZXRlZF9hdA==');

@$core.Deprecated('Use listtransactionsRequestDescriptor instead')
const ListtransactionsRequest$json = {
  '1': 'ListtransactionsRequest',
};

/// Descriptor for `ListtransactionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listtransactionsRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0dHJhbnNhY3Rpb25zUmVxdWVzdA==');

@$core.Deprecated('Use listtransactionsResponseDescriptor instead')
const ListtransactionsResponse$json = {
  '1': 'ListtransactionsResponse',
  '2': [
    {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.cln.ListtransactionsTransactions', '10': 'transactions'},
  ],
};

/// Descriptor for `ListtransactionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listtransactionsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0dHJhbnNhY3Rpb25zUmVzcG9uc2USRQoMdHJhbnNhY3Rpb25zGAEgAygLMiEuY2xuLk'
    'xpc3R0cmFuc2FjdGlvbnNUcmFuc2FjdGlvbnNSDHRyYW5zYWN0aW9ucw==');

@$core.Deprecated('Use listtransactionsTransactionsDescriptor instead')
const ListtransactionsTransactions$json = {
  '1': 'ListtransactionsTransactions',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    {'1': 'rawtx', '3': 2, '4': 1, '5': 12, '10': 'rawtx'},
    {'1': 'blockheight', '3': 3, '4': 1, '5': 13, '10': 'blockheight'},
    {'1': 'txindex', '3': 4, '4': 1, '5': 13, '10': 'txindex'},
    {'1': 'locktime', '3': 7, '4': 1, '5': 13, '10': 'locktime'},
    {'1': 'version', '3': 8, '4': 1, '5': 13, '10': 'version'},
    {'1': 'inputs', '3': 9, '4': 3, '5': 11, '6': '.cln.ListtransactionsTransactionsInputs', '10': 'inputs'},
    {'1': 'outputs', '3': 10, '4': 3, '5': 11, '6': '.cln.ListtransactionsTransactionsOutputs', '10': 'outputs'},
  ],
};

/// Descriptor for `ListtransactionsTransactions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listtransactionsTransactionsDescriptor = $convert.base64Decode(
    'ChxMaXN0dHJhbnNhY3Rpb25zVHJhbnNhY3Rpb25zEhIKBGhhc2gYASABKAxSBGhhc2gSFAoFcm'
    'F3dHgYAiABKAxSBXJhd3R4EiAKC2Jsb2NraGVpZ2h0GAMgASgNUgtibG9ja2hlaWdodBIYCgd0'
    'eGluZGV4GAQgASgNUgd0eGluZGV4EhoKCGxvY2t0aW1lGAcgASgNUghsb2NrdGltZRIYCgd2ZX'
    'JzaW9uGAggASgNUgd2ZXJzaW9uEj8KBmlucHV0cxgJIAMoCzInLmNsbi5MaXN0dHJhbnNhY3Rp'
    'b25zVHJhbnNhY3Rpb25zSW5wdXRzUgZpbnB1dHMSQgoHb3V0cHV0cxgKIAMoCzIoLmNsbi5MaX'
    'N0dHJhbnNhY3Rpb25zVHJhbnNhY3Rpb25zT3V0cHV0c1IHb3V0cHV0cw==');

@$core.Deprecated('Use listtransactionsTransactionsInputsDescriptor instead')
const ListtransactionsTransactionsInputs$json = {
  '1': 'ListtransactionsTransactionsInputs',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'index', '3': 2, '4': 1, '5': 13, '10': 'index'},
    {'1': 'sequence', '3': 3, '4': 1, '5': 13, '10': 'sequence'},
  ],
};

/// Descriptor for `ListtransactionsTransactionsInputs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listtransactionsTransactionsInputsDescriptor = $convert.base64Decode(
    'CiJMaXN0dHJhbnNhY3Rpb25zVHJhbnNhY3Rpb25zSW5wdXRzEhIKBHR4aWQYASABKAxSBHR4aW'
    'QSFAoFaW5kZXgYAiABKA1SBWluZGV4EhoKCHNlcXVlbmNlGAMgASgNUghzZXF1ZW5jZQ==');

@$core.Deprecated('Use listtransactionsTransactionsOutputsDescriptor instead')
const ListtransactionsTransactionsOutputs$json = {
  '1': 'ListtransactionsTransactionsOutputs',
  '2': [
    {'1': 'index', '3': 1, '4': 1, '5': 13, '10': 'index'},
    {'1': 'scriptPubKey', '3': 3, '4': 1, '5': 12, '10': 'scriptPubKey'},
    {'1': 'amount_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
  ],
};

/// Descriptor for `ListtransactionsTransactionsOutputs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listtransactionsTransactionsOutputsDescriptor = $convert.base64Decode(
    'CiNMaXN0dHJhbnNhY3Rpb25zVHJhbnNhY3Rpb25zT3V0cHV0cxIUCgVpbmRleBgBIAEoDVIFaW'
    '5kZXgSIgoMc2NyaXB0UHViS2V5GAMgASgMUgxzY3JpcHRQdWJLZXkSLAoLYW1vdW50X21zYXQY'
    'BiABKAsyCy5jbG4uQW1vdW50UgphbW91bnRNc2F0');

@$core.Deprecated('Use makesecretRequestDescriptor instead')
const MakesecretRequest$json = {
  '1': 'MakesecretRequest',
  '2': [
    {'1': 'hex', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'hex', '17': true},
    {'1': 'string', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'string', '17': true},
  ],
  '8': [
    {'1': '_hex'},
    {'1': '_string'},
  ],
};

/// Descriptor for `MakesecretRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List makesecretRequestDescriptor = $convert.base64Decode(
    'ChFNYWtlc2VjcmV0UmVxdWVzdBIVCgNoZXgYASABKAxIAFIDaGV4iAEBEhsKBnN0cmluZxgCIA'
    'EoCUgBUgZzdHJpbmeIAQFCBgoEX2hleEIJCgdfc3RyaW5n');

@$core.Deprecated('Use makesecretResponseDescriptor instead')
const MakesecretResponse$json = {
  '1': 'MakesecretResponse',
  '2': [
    {'1': 'secret', '3': 1, '4': 1, '5': 12, '10': 'secret'},
  ],
};

/// Descriptor for `MakesecretResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List makesecretResponseDescriptor = $convert.base64Decode(
    'ChJNYWtlc2VjcmV0UmVzcG9uc2USFgoGc2VjcmV0GAEgASgMUgZzZWNyZXQ=');

@$core.Deprecated('Use payRequestDescriptor instead')
const PayRequest$json = {
  '1': 'PayRequest',
  '2': [
    {'1': 'bolt11', '3': 1, '4': 1, '5': 9, '10': 'bolt11'},
    {'1': 'label', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
    {'1': 'maxfeepercent', '3': 4, '4': 1, '5': 1, '9': 1, '10': 'maxfeepercent', '17': true},
    {'1': 'retry_for', '3': 5, '4': 1, '5': 13, '9': 2, '10': 'retryFor', '17': true},
    {'1': 'maxdelay', '3': 6, '4': 1, '5': 13, '9': 3, '10': 'maxdelay', '17': true},
    {'1': 'exemptfee', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'exemptfee', '17': true},
    {'1': 'riskfactor', '3': 8, '4': 1, '5': 1, '9': 5, '10': 'riskfactor', '17': true},
    {'1': 'exclude', '3': 10, '4': 3, '5': 9, '10': 'exclude'},
    {'1': 'maxfee', '3': 11, '4': 1, '5': 11, '6': '.cln.Amount', '9': 6, '10': 'maxfee', '17': true},
    {'1': 'description', '3': 12, '4': 1, '5': 9, '9': 7, '10': 'description', '17': true},
    {'1': 'amount_msat', '3': 13, '4': 1, '5': 11, '6': '.cln.Amount', '9': 8, '10': 'amountMsat', '17': true},
    {'1': 'localinvreqid', '3': 14, '4': 1, '5': 12, '9': 9, '10': 'localinvreqid', '17': true},
    {'1': 'partial_msat', '3': 15, '4': 1, '5': 11, '6': '.cln.Amount', '9': 10, '10': 'partialMsat', '17': true},
  ],
  '8': [
    {'1': '_label'},
    {'1': '_maxfeepercent'},
    {'1': '_retry_for'},
    {'1': '_maxdelay'},
    {'1': '_exemptfee'},
    {'1': '_riskfactor'},
    {'1': '_maxfee'},
    {'1': '_description'},
    {'1': '_amount_msat'},
    {'1': '_localinvreqid'},
    {'1': '_partial_msat'},
  ],
};

/// Descriptor for `PayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payRequestDescriptor = $convert.base64Decode(
    'CgpQYXlSZXF1ZXN0EhYKBmJvbHQxMRgBIAEoCVIGYm9sdDExEhkKBWxhYmVsGAMgASgJSABSBW'
    'xhYmVsiAEBEikKDW1heGZlZXBlcmNlbnQYBCABKAFIAVINbWF4ZmVlcGVyY2VudIgBARIgCgly'
    'ZXRyeV9mb3IYBSABKA1IAlIIcmV0cnlGb3KIAQESHwoIbWF4ZGVsYXkYBiABKA1IA1IIbWF4ZG'
    'VsYXmIAQESLgoJZXhlbXB0ZmVlGAcgASgLMgsuY2xuLkFtb3VudEgEUglleGVtcHRmZWWIAQES'
    'IwoKcmlza2ZhY3RvchgIIAEoAUgFUgpyaXNrZmFjdG9yiAEBEhgKB2V4Y2x1ZGUYCiADKAlSB2'
    'V4Y2x1ZGUSKAoGbWF4ZmVlGAsgASgLMgsuY2xuLkFtb3VudEgGUgZtYXhmZWWIAQESJQoLZGVz'
    'Y3JpcHRpb24YDCABKAlIB1ILZGVzY3JpcHRpb26IAQESMQoLYW1vdW50X21zYXQYDSABKAsyCy'
    '5jbG4uQW1vdW50SAhSCmFtb3VudE1zYXSIAQESKQoNbG9jYWxpbnZyZXFpZBgOIAEoDEgJUg1s'
    'b2NhbGludnJlcWlkiAEBEjMKDHBhcnRpYWxfbXNhdBgPIAEoCzILLmNsbi5BbW91bnRIClILcG'
    'FydGlhbE1zYXSIAQFCCAoGX2xhYmVsQhAKDl9tYXhmZWVwZXJjZW50QgwKCl9yZXRyeV9mb3JC'
    'CwoJX21heGRlbGF5QgwKCl9leGVtcHRmZWVCDQoLX3Jpc2tmYWN0b3JCCQoHX21heGZlZUIOCg'
    'xfZGVzY3JpcHRpb25CDgoMX2Ftb3VudF9tc2F0QhAKDl9sb2NhbGludnJlcWlkQg8KDV9wYXJ0'
    'aWFsX21zYXQ=');

@$core.Deprecated('Use payResponseDescriptor instead')
const PayResponse$json = {
  '1': 'PayResponse',
  '2': [
    {'1': 'payment_preimage', '3': 1, '4': 1, '5': 12, '10': 'paymentPreimage'},
    {'1': 'destination', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'destination', '17': true},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 1, '10': 'createdAt'},
    {'1': 'parts', '3': 5, '4': 1, '5': 13, '10': 'parts'},
    {'1': 'amount_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'amount_sent_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountSentMsat'},
    {'1': 'warning_partial_completion', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'warningPartialCompletion', '17': true},
    {'1': 'status', '3': 9, '4': 1, '5': 14, '6': '.cln.PayResponse.PayStatus', '10': 'status'},
  ],
  '4': [PayResponse_PayStatus$json],
  '8': [
    {'1': '_destination'},
    {'1': '_warning_partial_completion'},
  ],
};

@$core.Deprecated('Use payResponseDescriptor instead')
const PayResponse_PayStatus$json = {
  '1': 'PayStatus',
  '2': [
    {'1': 'COMPLETE', '2': 0},
    {'1': 'PENDING', '2': 1},
    {'1': 'FAILED', '2': 2},
  ],
};

/// Descriptor for `PayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payResponseDescriptor = $convert.base64Decode(
    'CgtQYXlSZXNwb25zZRIpChBwYXltZW50X3ByZWltYWdlGAEgASgMUg9wYXltZW50UHJlaW1hZ2'
    'USJQoLZGVzdGluYXRpb24YAiABKAxIAFILZGVzdGluYXRpb26IAQESIQoMcGF5bWVudF9oYXNo'
    'GAMgASgMUgtwYXltZW50SGFzaBIdCgpjcmVhdGVkX2F0GAQgASgBUgljcmVhdGVkQXQSFAoFcG'
    'FydHMYBSABKA1SBXBhcnRzEiwKC2Ftb3VudF9tc2F0GAYgASgLMgsuY2xuLkFtb3VudFIKYW1v'
    'dW50TXNhdBI1ChBhbW91bnRfc2VudF9tc2F0GAcgASgLMgsuY2xuLkFtb3VudFIOYW1vdW50U2'
    'VudE1zYXQSQQoad2FybmluZ19wYXJ0aWFsX2NvbXBsZXRpb24YCCABKAlIAVIYd2FybmluZ1Bh'
    'cnRpYWxDb21wbGV0aW9uiAEBEjIKBnN0YXR1cxgJIAEoDjIaLmNsbi5QYXlSZXNwb25zZS5QYX'
    'lTdGF0dXNSBnN0YXR1cyIyCglQYXlTdGF0dXMSDAoIQ09NUExFVEUQABILCgdQRU5ESU5HEAES'
    'CgoGRkFJTEVEEAJCDgoMX2Rlc3RpbmF0aW9uQh0KG193YXJuaW5nX3BhcnRpYWxfY29tcGxldG'
    'lvbg==');

@$core.Deprecated('Use listnodesRequestDescriptor instead')
const ListnodesRequest$json = {
  '1': 'ListnodesRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'id', '17': true},
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `ListnodesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listnodesRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0bm9kZXNSZXF1ZXN0EhMKAmlkGAEgASgMSABSAmlkiAEBQgUKA19pZA==');

@$core.Deprecated('Use listnodesResponseDescriptor instead')
const ListnodesResponse$json = {
  '1': 'ListnodesResponse',
  '2': [
    {'1': 'nodes', '3': 1, '4': 3, '5': 11, '6': '.cln.ListnodesNodes', '10': 'nodes'},
  ],
};

/// Descriptor for `ListnodesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listnodesResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0bm9kZXNSZXNwb25zZRIpCgVub2RlcxgBIAMoCzITLmNsbi5MaXN0bm9kZXNOb2Rlc1'
    'IFbm9kZXM=');

@$core.Deprecated('Use listnodesNodesDescriptor instead')
const ListnodesNodes$json = {
  '1': 'ListnodesNodes',
  '2': [
    {'1': 'nodeid', '3': 1, '4': 1, '5': 12, '10': 'nodeid'},
    {'1': 'last_timestamp', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'lastTimestamp', '17': true},
    {'1': 'alias', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'alias', '17': true},
    {'1': 'color', '3': 4, '4': 1, '5': 12, '9': 2, '10': 'color', '17': true},
    {'1': 'features', '3': 5, '4': 1, '5': 12, '9': 3, '10': 'features', '17': true},
    {'1': 'addresses', '3': 6, '4': 3, '5': 11, '6': '.cln.ListnodesNodesAddresses', '10': 'addresses'},
    {'1': 'option_will_fund', '3': 7, '4': 1, '5': 11, '6': '.cln.ListnodesNodesOption_will_fund', '9': 4, '10': 'optionWillFund', '17': true},
  ],
  '8': [
    {'1': '_last_timestamp'},
    {'1': '_alias'},
    {'1': '_color'},
    {'1': '_features'},
    {'1': '_option_will_fund'},
  ],
};

/// Descriptor for `ListnodesNodes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listnodesNodesDescriptor = $convert.base64Decode(
    'Cg5MaXN0bm9kZXNOb2RlcxIWCgZub2RlaWQYASABKAxSBm5vZGVpZBIqCg5sYXN0X3RpbWVzdG'
    'FtcBgCIAEoDUgAUg1sYXN0VGltZXN0YW1wiAEBEhkKBWFsaWFzGAMgASgJSAFSBWFsaWFziAEB'
    'EhkKBWNvbG9yGAQgASgMSAJSBWNvbG9yiAEBEh8KCGZlYXR1cmVzGAUgASgMSANSCGZlYXR1cm'
    'VziAEBEjoKCWFkZHJlc3NlcxgGIAMoCzIcLmNsbi5MaXN0bm9kZXNOb2Rlc0FkZHJlc3Nlc1IJ'
    'YWRkcmVzc2VzElIKEG9wdGlvbl93aWxsX2Z1bmQYByABKAsyIy5jbG4uTGlzdG5vZGVzTm9kZX'
    'NPcHRpb25fd2lsbF9mdW5kSARSDm9wdGlvbldpbGxGdW5kiAEBQhEKD19sYXN0X3RpbWVzdGFt'
    'cEIICgZfYWxpYXNCCAoGX2NvbG9yQgsKCV9mZWF0dXJlc0ITChFfb3B0aW9uX3dpbGxfZnVuZA'
    '==');

@$core.Deprecated('Use listnodesNodesOption_will_fundDescriptor instead')
const ListnodesNodesOption_will_fund$json = {
  '1': 'ListnodesNodesOption_will_fund',
  '2': [
    {'1': 'lease_fee_base_msat', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'leaseFeeBaseMsat'},
    {'1': 'lease_fee_basis', '3': 2, '4': 1, '5': 13, '10': 'leaseFeeBasis'},
    {'1': 'funding_weight', '3': 3, '4': 1, '5': 13, '10': 'fundingWeight'},
    {'1': 'channel_fee_max_base_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'channelFeeMaxBaseMsat'},
    {'1': 'channel_fee_max_proportional_thousandths', '3': 5, '4': 1, '5': 13, '10': 'channelFeeMaxProportionalThousandths'},
    {'1': 'compact_lease', '3': 6, '4': 1, '5': 12, '10': 'compactLease'},
  ],
};

/// Descriptor for `ListnodesNodesOption_will_fund`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listnodesNodesOption_will_fundDescriptor = $convert.base64Decode(
    'Ch5MaXN0bm9kZXNOb2Rlc09wdGlvbl93aWxsX2Z1bmQSOgoTbGVhc2VfZmVlX2Jhc2VfbXNhdB'
    'gBIAEoCzILLmNsbi5BbW91bnRSEGxlYXNlRmVlQmFzZU1zYXQSJgoPbGVhc2VfZmVlX2Jhc2lz'
    'GAIgASgNUg1sZWFzZUZlZUJhc2lzEiUKDmZ1bmRpbmdfd2VpZ2h0GAMgASgNUg1mdW5kaW5nV2'
    'VpZ2h0EkUKGWNoYW5uZWxfZmVlX21heF9iYXNlX21zYXQYBCABKAsyCy5jbG4uQW1vdW50UhVj'
    'aGFubmVsRmVlTWF4QmFzZU1zYXQSVgooY2hhbm5lbF9mZWVfbWF4X3Byb3BvcnRpb25hbF90aG'
    '91c2FuZHRocxgFIAEoDVIkY2hhbm5lbEZlZU1heFByb3BvcnRpb25hbFRob3VzYW5kdGhzEiMK'
    'DWNvbXBhY3RfbGVhc2UYBiABKAxSDGNvbXBhY3RMZWFzZQ==');

@$core.Deprecated('Use listnodesNodesAddressesDescriptor instead')
const ListnodesNodesAddresses$json = {
  '1': 'ListnodesNodesAddresses',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.ListnodesNodesAddresses.ListnodesNodesAddressesType', '10': 'itemType'},
    {'1': 'port', '3': 2, '4': 1, '5': 13, '10': 'port'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'address', '17': true},
  ],
  '4': [ListnodesNodesAddresses_ListnodesNodesAddressesType$json],
  '8': [
    {'1': '_address'},
  ],
};

@$core.Deprecated('Use listnodesNodesAddressesDescriptor instead')
const ListnodesNodesAddresses_ListnodesNodesAddressesType$json = {
  '1': 'ListnodesNodesAddressesType',
  '2': [
    {'1': 'DNS', '2': 0},
    {'1': 'IPV4', '2': 1},
    {'1': 'IPV6', '2': 2},
    {'1': 'TORV2', '2': 3},
    {'1': 'TORV3', '2': 4},
  ],
};

/// Descriptor for `ListnodesNodesAddresses`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listnodesNodesAddressesDescriptor = $convert.base64Decode(
    'ChdMaXN0bm9kZXNOb2Rlc0FkZHJlc3NlcxJVCglpdGVtX3R5cGUYASABKA4yOC5jbG4uTGlzdG'
    '5vZGVzTm9kZXNBZGRyZXNzZXMuTGlzdG5vZGVzTm9kZXNBZGRyZXNzZXNUeXBlUghpdGVtVHlw'
    'ZRISCgRwb3J0GAIgASgNUgRwb3J0Eh0KB2FkZHJlc3MYAyABKAlIAFIHYWRkcmVzc4gBASJQCh'
    'tMaXN0bm9kZXNOb2Rlc0FkZHJlc3Nlc1R5cGUSBwoDRE5TEAASCAoESVBWNBABEggKBElQVjYQ'
    'AhIJCgVUT1JWMhADEgkKBVRPUlYzEARCCgoIX2FkZHJlc3M=');

@$core.Deprecated('Use waitanyinvoiceRequestDescriptor instead')
const WaitanyinvoiceRequest$json = {
  '1': 'WaitanyinvoiceRequest',
  '2': [
    {'1': 'lastpay_index', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'lastpayIndex', '17': true},
    {'1': 'timeout', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'timeout', '17': true},
  ],
  '8': [
    {'1': '_lastpay_index'},
    {'1': '_timeout'},
  ],
};

/// Descriptor for `WaitanyinvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitanyinvoiceRequestDescriptor = $convert.base64Decode(
    'ChVXYWl0YW55aW52b2ljZVJlcXVlc3QSKAoNbGFzdHBheV9pbmRleBgBIAEoBEgAUgxsYXN0cG'
    'F5SW5kZXiIAQESHQoHdGltZW91dBgCIAEoBEgBUgd0aW1lb3V0iAEBQhAKDl9sYXN0cGF5X2lu'
    'ZGV4QgoKCF90aW1lb3V0');

@$core.Deprecated('Use waitanyinvoiceResponseDescriptor instead')
const WaitanyinvoiceResponse$json = {
  '1': 'WaitanyinvoiceResponse',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.cln.WaitanyinvoiceResponse.WaitanyinvoiceStatus', '10': 'status'},
    {'1': 'expires_at', '3': 5, '4': 1, '5': 4, '10': 'expiresAt'},
    {'1': 'amount_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'bolt11', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'bolt12', '17': true},
    {'1': 'pay_index', '3': 9, '4': 1, '5': 4, '9': 3, '10': 'payIndex', '17': true},
    {'1': 'amount_received_msat', '3': 10, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'amountReceivedMsat', '17': true},
    {'1': 'paid_at', '3': 11, '4': 1, '5': 4, '9': 5, '10': 'paidAt', '17': true},
    {'1': 'payment_preimage', '3': 12, '4': 1, '5': 12, '9': 6, '10': 'paymentPreimage', '17': true},
    {'1': 'created_index', '3': 13, '4': 1, '5': 4, '9': 7, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 14, '4': 1, '5': 4, '9': 8, '10': 'updatedIndex', '17': true},
    {'1': 'paid_outpoint', '3': 15, '4': 1, '5': 11, '6': '.cln.WaitanyinvoicePaid_outpoint', '9': 9, '10': 'paidOutpoint', '17': true},
  ],
  '4': [WaitanyinvoiceResponse_WaitanyinvoiceStatus$json],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_pay_index'},
    {'1': '_amount_received_msat'},
    {'1': '_paid_at'},
    {'1': '_payment_preimage'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
    {'1': '_paid_outpoint'},
  ],
};

@$core.Deprecated('Use waitanyinvoiceResponseDescriptor instead')
const WaitanyinvoiceResponse_WaitanyinvoiceStatus$json = {
  '1': 'WaitanyinvoiceStatus',
  '2': [
    {'1': 'PAID', '2': 0},
    {'1': 'EXPIRED', '2': 1},
  ],
};

/// Descriptor for `WaitanyinvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitanyinvoiceResponseDescriptor = $convert.base64Decode(
    'ChZXYWl0YW55aW52b2ljZVJlc3BvbnNlEhQKBWxhYmVsGAEgASgJUgVsYWJlbBIgCgtkZXNjcm'
    'lwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SIQoMcGF5bWVudF9oYXNoGAMgASgMUgtwYXltZW50'
    'SGFzaBJICgZzdGF0dXMYBCABKA4yMC5jbG4uV2FpdGFueWludm9pY2VSZXNwb25zZS5XYWl0YW'
    '55aW52b2ljZVN0YXR1c1IGc3RhdHVzEh0KCmV4cGlyZXNfYXQYBSABKARSCWV4cGlyZXNBdBIx'
    'CgthbW91bnRfbXNhdBgGIAEoCzILLmNsbi5BbW91bnRIAFIKYW1vdW50TXNhdIgBARIbCgZib2'
    'x0MTEYByABKAlIAVIGYm9sdDExiAEBEhsKBmJvbHQxMhgIIAEoCUgCUgZib2x0MTKIAQESIAoJ'
    'cGF5X2luZGV4GAkgASgESANSCHBheUluZGV4iAEBEkIKFGFtb3VudF9yZWNlaXZlZF9tc2F0GA'
    'ogASgLMgsuY2xuLkFtb3VudEgEUhJhbW91bnRSZWNlaXZlZE1zYXSIAQESHAoHcGFpZF9hdBgL'
    'IAEoBEgFUgZwYWlkQXSIAQESLgoQcGF5bWVudF9wcmVpbWFnZRgMIAEoDEgGUg9wYXltZW50UH'
    'JlaW1hZ2WIAQESKAoNY3JlYXRlZF9pbmRleBgNIAEoBEgHUgxjcmVhdGVkSW5kZXiIAQESKAoN'
    'dXBkYXRlZF9pbmRleBgOIAEoBEgIUgx1cGRhdGVkSW5kZXiIAQESSgoNcGFpZF9vdXRwb2ludB'
    'gPIAEoCzIgLmNsbi5XYWl0YW55aW52b2ljZVBhaWRfb3V0cG9pbnRICVIMcGFpZE91dHBvaW50'
    'iAEBIi0KFFdhaXRhbnlpbnZvaWNlU3RhdHVzEggKBFBBSUQQABILCgdFWFBJUkVEEAFCDgoMX2'
    'Ftb3VudF9tc2F0QgkKB19ib2x0MTFCCQoHX2JvbHQxMkIMCgpfcGF5X2luZGV4QhcKFV9hbW91'
    'bnRfcmVjZWl2ZWRfbXNhdEIKCghfcGFpZF9hdEITChFfcGF5bWVudF9wcmVpbWFnZUIQCg5fY3'
    'JlYXRlZF9pbmRleEIQCg5fdXBkYXRlZF9pbmRleEIQCg5fcGFpZF9vdXRwb2ludA==');

@$core.Deprecated('Use waitanyinvoicePaid_outpointDescriptor instead')
const WaitanyinvoicePaid_outpoint$json = {
  '1': 'WaitanyinvoicePaid_outpoint',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'outnum', '3': 2, '4': 1, '5': 13, '10': 'outnum'},
  ],
};

/// Descriptor for `WaitanyinvoicePaid_outpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitanyinvoicePaid_outpointDescriptor = $convert.base64Decode(
    'ChtXYWl0YW55aW52b2ljZVBhaWRfb3V0cG9pbnQSEgoEdHhpZBgBIAEoDFIEdHhpZBIWCgZvdX'
    'RudW0YAiABKA1SBm91dG51bQ==');

@$core.Deprecated('Use waitinvoiceRequestDescriptor instead')
const WaitinvoiceRequest$json = {
  '1': 'WaitinvoiceRequest',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `WaitinvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitinvoiceRequestDescriptor = $convert.base64Decode(
    'ChJXYWl0aW52b2ljZVJlcXVlc3QSFAoFbGFiZWwYASABKAlSBWxhYmVs');

@$core.Deprecated('Use waitinvoiceResponseDescriptor instead')
const WaitinvoiceResponse$json = {
  '1': 'WaitinvoiceResponse',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.cln.WaitinvoiceResponse.WaitinvoiceStatus', '10': 'status'},
    {'1': 'expires_at', '3': 5, '4': 1, '5': 4, '10': 'expiresAt'},
    {'1': 'amount_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'bolt11', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'bolt12', '17': true},
    {'1': 'pay_index', '3': 9, '4': 1, '5': 4, '9': 3, '10': 'payIndex', '17': true},
    {'1': 'amount_received_msat', '3': 10, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'amountReceivedMsat', '17': true},
    {'1': 'paid_at', '3': 11, '4': 1, '5': 4, '9': 5, '10': 'paidAt', '17': true},
    {'1': 'payment_preimage', '3': 12, '4': 1, '5': 12, '9': 6, '10': 'paymentPreimage', '17': true},
    {'1': 'created_index', '3': 13, '4': 1, '5': 4, '9': 7, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 14, '4': 1, '5': 4, '9': 8, '10': 'updatedIndex', '17': true},
    {'1': 'paid_outpoint', '3': 15, '4': 1, '5': 11, '6': '.cln.WaitinvoicePaid_outpoint', '9': 9, '10': 'paidOutpoint', '17': true},
  ],
  '4': [WaitinvoiceResponse_WaitinvoiceStatus$json],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_pay_index'},
    {'1': '_amount_received_msat'},
    {'1': '_paid_at'},
    {'1': '_payment_preimage'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
    {'1': '_paid_outpoint'},
  ],
};

@$core.Deprecated('Use waitinvoiceResponseDescriptor instead')
const WaitinvoiceResponse_WaitinvoiceStatus$json = {
  '1': 'WaitinvoiceStatus',
  '2': [
    {'1': 'PAID', '2': 0},
    {'1': 'EXPIRED', '2': 1},
  ],
};

/// Descriptor for `WaitinvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitinvoiceResponseDescriptor = $convert.base64Decode(
    'ChNXYWl0aW52b2ljZVJlc3BvbnNlEhQKBWxhYmVsGAEgASgJUgVsYWJlbBIgCgtkZXNjcmlwdG'
    'lvbhgCIAEoCVILZGVzY3JpcHRpb24SIQoMcGF5bWVudF9oYXNoGAMgASgMUgtwYXltZW50SGFz'
    'aBJCCgZzdGF0dXMYBCABKA4yKi5jbG4uV2FpdGludm9pY2VSZXNwb25zZS5XYWl0aW52b2ljZV'
    'N0YXR1c1IGc3RhdHVzEh0KCmV4cGlyZXNfYXQYBSABKARSCWV4cGlyZXNBdBIxCgthbW91bnRf'
    'bXNhdBgGIAEoCzILLmNsbi5BbW91bnRIAFIKYW1vdW50TXNhdIgBARIbCgZib2x0MTEYByABKA'
    'lIAVIGYm9sdDExiAEBEhsKBmJvbHQxMhgIIAEoCUgCUgZib2x0MTKIAQESIAoJcGF5X2luZGV4'
    'GAkgASgESANSCHBheUluZGV4iAEBEkIKFGFtb3VudF9yZWNlaXZlZF9tc2F0GAogASgLMgsuY2'
    'xuLkFtb3VudEgEUhJhbW91bnRSZWNlaXZlZE1zYXSIAQESHAoHcGFpZF9hdBgLIAEoBEgFUgZw'
    'YWlkQXSIAQESLgoQcGF5bWVudF9wcmVpbWFnZRgMIAEoDEgGUg9wYXltZW50UHJlaW1hZ2WIAQ'
    'ESKAoNY3JlYXRlZF9pbmRleBgNIAEoBEgHUgxjcmVhdGVkSW5kZXiIAQESKAoNdXBkYXRlZF9p'
    'bmRleBgOIAEoBEgIUgx1cGRhdGVkSW5kZXiIAQESRwoNcGFpZF9vdXRwb2ludBgPIAEoCzIdLm'
    'Nsbi5XYWl0aW52b2ljZVBhaWRfb3V0cG9pbnRICVIMcGFpZE91dHBvaW50iAEBIioKEVdhaXRp'
    'bnZvaWNlU3RhdHVzEggKBFBBSUQQABILCgdFWFBJUkVEEAFCDgoMX2Ftb3VudF9tc2F0QgkKB1'
    '9ib2x0MTFCCQoHX2JvbHQxMkIMCgpfcGF5X2luZGV4QhcKFV9hbW91bnRfcmVjZWl2ZWRfbXNh'
    'dEIKCghfcGFpZF9hdEITChFfcGF5bWVudF9wcmVpbWFnZUIQCg5fY3JlYXRlZF9pbmRleEIQCg'
    '5fdXBkYXRlZF9pbmRleEIQCg5fcGFpZF9vdXRwb2ludA==');

@$core.Deprecated('Use waitinvoicePaid_outpointDescriptor instead')
const WaitinvoicePaid_outpoint$json = {
  '1': 'WaitinvoicePaid_outpoint',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'outnum', '3': 2, '4': 1, '5': 13, '10': 'outnum'},
  ],
};

/// Descriptor for `WaitinvoicePaid_outpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitinvoicePaid_outpointDescriptor = $convert.base64Decode(
    'ChhXYWl0aW52b2ljZVBhaWRfb3V0cG9pbnQSEgoEdHhpZBgBIAEoDFIEdHhpZBIWCgZvdXRudW'
    '0YAiABKA1SBm91dG51bQ==');

@$core.Deprecated('Use waitsendpayRequestDescriptor instead')
const WaitsendpayRequest$json = {
  '1': 'WaitsendpayRequest',
  '2': [
    {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'partid', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'partid', '17': true},
    {'1': 'timeout', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'timeout', '17': true},
    {'1': 'groupid', '3': 4, '4': 1, '5': 4, '9': 2, '10': 'groupid', '17': true},
  ],
  '8': [
    {'1': '_partid'},
    {'1': '_timeout'},
    {'1': '_groupid'},
  ],
};

/// Descriptor for `WaitsendpayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitsendpayRequestDescriptor = $convert.base64Decode(
    'ChJXYWl0c2VuZHBheVJlcXVlc3QSIQoMcGF5bWVudF9oYXNoGAEgASgMUgtwYXltZW50SGFzaB'
    'IbCgZwYXJ0aWQYAiABKARIAFIGcGFydGlkiAEBEh0KB3RpbWVvdXQYAyABKA1IAVIHdGltZW91'
    'dIgBARIdCgdncm91cGlkGAQgASgESAJSB2dyb3VwaWSIAQFCCQoHX3BhcnRpZEIKCghfdGltZW'
    '91dEIKCghfZ3JvdXBpZA==');

@$core.Deprecated('Use waitsendpayResponseDescriptor instead')
const WaitsendpayResponse$json = {
  '1': 'WaitsendpayResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'groupid', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'groupid', '17': true},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.cln.WaitsendpayResponse.WaitsendpayStatus', '10': 'status'},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'amountMsat', '17': true},
    {'1': 'destination', '3': 6, '4': 1, '5': 12, '9': 2, '10': 'destination', '17': true},
    {'1': 'created_at', '3': 7, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'amount_sent_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountSentMsat'},
    {'1': 'label', '3': 9, '4': 1, '5': 9, '9': 3, '10': 'label', '17': true},
    {'1': 'partid', '3': 10, '4': 1, '5': 4, '9': 4, '10': 'partid', '17': true},
    {'1': 'bolt11', '3': 11, '4': 1, '5': 9, '9': 5, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 12, '4': 1, '5': 9, '9': 6, '10': 'bolt12', '17': true},
    {'1': 'payment_preimage', '3': 13, '4': 1, '5': 12, '9': 7, '10': 'paymentPreimage', '17': true},
    {'1': 'completed_at', '3': 14, '4': 1, '5': 1, '9': 8, '10': 'completedAt', '17': true},
    {'1': 'created_index', '3': 15, '4': 1, '5': 4, '9': 9, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 16, '4': 1, '5': 4, '9': 10, '10': 'updatedIndex', '17': true},
  ],
  '4': [WaitsendpayResponse_WaitsendpayStatus$json],
  '8': [
    {'1': '_groupid'},
    {'1': '_amount_msat'},
    {'1': '_destination'},
    {'1': '_label'},
    {'1': '_partid'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_payment_preimage'},
    {'1': '_completed_at'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
  ],
};

@$core.Deprecated('Use waitsendpayResponseDescriptor instead')
const WaitsendpayResponse_WaitsendpayStatus$json = {
  '1': 'WaitsendpayStatus',
  '2': [
    {'1': 'COMPLETE', '2': 0},
  ],
};

/// Descriptor for `WaitsendpayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitsendpayResponseDescriptor = $convert.base64Decode(
    'ChNXYWl0c2VuZHBheVJlc3BvbnNlEg4KAmlkGAEgASgEUgJpZBIdCgdncm91cGlkGAIgASgESA'
    'BSB2dyb3VwaWSIAQESIQoMcGF5bWVudF9oYXNoGAMgASgMUgtwYXltZW50SGFzaBJCCgZzdGF0'
    'dXMYBCABKA4yKi5jbG4uV2FpdHNlbmRwYXlSZXNwb25zZS5XYWl0c2VuZHBheVN0YXR1c1IGc3'
    'RhdHVzEjEKC2Ftb3VudF9tc2F0GAUgASgLMgsuY2xuLkFtb3VudEgBUgphbW91bnRNc2F0iAEB'
    'EiUKC2Rlc3RpbmF0aW9uGAYgASgMSAJSC2Rlc3RpbmF0aW9uiAEBEh0KCmNyZWF0ZWRfYXQYBy'
    'ABKARSCWNyZWF0ZWRBdBI1ChBhbW91bnRfc2VudF9tc2F0GAggASgLMgsuY2xuLkFtb3VudFIO'
    'YW1vdW50U2VudE1zYXQSGQoFbGFiZWwYCSABKAlIA1IFbGFiZWyIAQESGwoGcGFydGlkGAogAS'
    'gESARSBnBhcnRpZIgBARIbCgZib2x0MTEYCyABKAlIBVIGYm9sdDExiAEBEhsKBmJvbHQxMhgM'
    'IAEoCUgGUgZib2x0MTKIAQESLgoQcGF5bWVudF9wcmVpbWFnZRgNIAEoDEgHUg9wYXltZW50UH'
    'JlaW1hZ2WIAQESJgoMY29tcGxldGVkX2F0GA4gASgBSAhSC2NvbXBsZXRlZEF0iAEBEigKDWNy'
    'ZWF0ZWRfaW5kZXgYDyABKARICVIMY3JlYXRlZEluZGV4iAEBEigKDXVwZGF0ZWRfaW5kZXgYEC'
    'ABKARIClIMdXBkYXRlZEluZGV4iAEBIiEKEVdhaXRzZW5kcGF5U3RhdHVzEgwKCENPTVBMRVRF'
    'EABCCgoIX2dyb3VwaWRCDgoMX2Ftb3VudF9tc2F0Qg4KDF9kZXN0aW5hdGlvbkIICgZfbGFiZW'
    'xCCQoHX3BhcnRpZEIJCgdfYm9sdDExQgkKB19ib2x0MTJCEwoRX3BheW1lbnRfcHJlaW1hZ2VC'
    'DwoNX2NvbXBsZXRlZF9hdEIQCg5fY3JlYXRlZF9pbmRleEIQCg5fdXBkYXRlZF9pbmRleA==');

@$core.Deprecated('Use newaddrRequestDescriptor instead')
const NewaddrRequest$json = {
  '1': 'NewaddrRequest',
  '2': [
    {'1': 'addresstype', '3': 1, '4': 1, '5': 14, '6': '.cln.NewaddrRequest.NewaddrAddresstype', '9': 0, '10': 'addresstype', '17': true},
  ],
  '4': [NewaddrRequest_NewaddrAddresstype$json],
  '8': [
    {'1': '_addresstype'},
  ],
};

@$core.Deprecated('Use newaddrRequestDescriptor instead')
const NewaddrRequest_NewaddrAddresstype$json = {
  '1': 'NewaddrAddresstype',
  '2': [
    {'1': 'BECH32', '2': 0},
    {'1': 'ALL', '2': 2},
    {'1': 'P2TR', '2': 3},
  ],
};

/// Descriptor for `NewaddrRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newaddrRequestDescriptor = $convert.base64Decode(
    'Cg5OZXdhZGRyUmVxdWVzdBJNCgthZGRyZXNzdHlwZRgBIAEoDjImLmNsbi5OZXdhZGRyUmVxdW'
    'VzdC5OZXdhZGRyQWRkcmVzc3R5cGVIAFILYWRkcmVzc3R5cGWIAQEiMwoSTmV3YWRkckFkZHJl'
    'c3N0eXBlEgoKBkJFQ0gzMhAAEgcKA0FMTBACEggKBFAyVFIQA0IOCgxfYWRkcmVzc3R5cGU=');

@$core.Deprecated('Use newaddrResponseDescriptor instead')
const NewaddrResponse$json = {
  '1': 'NewaddrResponse',
  '2': [
    {'1': 'bech32', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'bech32', '17': true},
    {'1': 'p2tr', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'p2tr', '17': true},
  ],
  '8': [
    {'1': '_bech32'},
    {'1': '_p2tr'},
  ],
};

/// Descriptor for `NewaddrResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newaddrResponseDescriptor = $convert.base64Decode(
    'Cg9OZXdhZGRyUmVzcG9uc2USGwoGYmVjaDMyGAEgASgJSABSBmJlY2gzMogBARIXCgRwMnRyGA'
    'MgASgJSAFSBHAydHKIAQFCCQoHX2JlY2gzMkIHCgVfcDJ0cg==');

@$core.Deprecated('Use withdrawRequestDescriptor instead')
const WithdrawRequest$json = {
  '1': 'WithdrawRequest',
  '2': [
    {'1': 'destination', '3': 1, '4': 1, '5': 9, '10': 'destination'},
    {'1': 'satoshi', '3': 2, '4': 1, '5': 11, '6': '.cln.AmountOrAll', '10': 'satoshi'},
    {'1': 'minconf', '3': 3, '4': 1, '5': 13, '9': 0, '10': 'minconf', '17': true},
    {'1': 'utxos', '3': 4, '4': 3, '5': 11, '6': '.cln.Outpoint', '10': 'utxos'},
    {'1': 'feerate', '3': 5, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 1, '10': 'feerate', '17': true},
  ],
  '8': [
    {'1': '_minconf'},
    {'1': '_feerate'},
  ],
};

/// Descriptor for `WithdrawRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withdrawRequestDescriptor = $convert.base64Decode(
    'Cg9XaXRoZHJhd1JlcXVlc3QSIAoLZGVzdGluYXRpb24YASABKAlSC2Rlc3RpbmF0aW9uEioKB3'
    'NhdG9zaGkYAiABKAsyEC5jbG4uQW1vdW50T3JBbGxSB3NhdG9zaGkSHQoHbWluY29uZhgDIAEo'
    'DUgAUgdtaW5jb25miAEBEiMKBXV0eG9zGAQgAygLMg0uY2xuLk91dHBvaW50UgV1dHhvcxIrCg'
    'dmZWVyYXRlGAUgASgLMgwuY2xuLkZlZXJhdGVIAVIHZmVlcmF0ZYgBAUIKCghfbWluY29uZkIK'
    'CghfZmVlcmF0ZQ==');

@$core.Deprecated('Use withdrawResponseDescriptor instead')
const WithdrawResponse$json = {
  '1': 'WithdrawResponse',
  '2': [
    {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
    {'1': 'txid', '3': 2, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'psbt', '3': 3, '4': 1, '5': 9, '10': 'psbt'},
  ],
};

/// Descriptor for `WithdrawResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List withdrawResponseDescriptor = $convert.base64Decode(
    'ChBXaXRoZHJhd1Jlc3BvbnNlEg4KAnR4GAEgASgMUgJ0eBISCgR0eGlkGAIgASgMUgR0eGlkEh'
    'IKBHBzYnQYAyABKAlSBHBzYnQ=');

@$core.Deprecated('Use keysendRequestDescriptor instead')
const KeysendRequest$json = {
  '1': 'KeysendRequest',
  '2': [
    {'1': 'destination', '3': 1, '4': 1, '5': 12, '10': 'destination'},
    {'1': 'label', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
    {'1': 'maxfeepercent', '3': 4, '4': 1, '5': 1, '9': 1, '10': 'maxfeepercent', '17': true},
    {'1': 'retry_for', '3': 5, '4': 1, '5': 13, '9': 2, '10': 'retryFor', '17': true},
    {'1': 'maxdelay', '3': 6, '4': 1, '5': 13, '9': 3, '10': 'maxdelay', '17': true},
    {'1': 'exemptfee', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'exemptfee', '17': true},
    {'1': 'routehints', '3': 8, '4': 1, '5': 11, '6': '.cln.RoutehintList', '9': 5, '10': 'routehints', '17': true},
    {'1': 'extratlvs', '3': 9, '4': 1, '5': 11, '6': '.cln.TlvStream', '9': 6, '10': 'extratlvs', '17': true},
    {'1': 'amount_msat', '3': 10, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
  ],
  '8': [
    {'1': '_label'},
    {'1': '_maxfeepercent'},
    {'1': '_retry_for'},
    {'1': '_maxdelay'},
    {'1': '_exemptfee'},
    {'1': '_routehints'},
    {'1': '_extratlvs'},
  ],
};

/// Descriptor for `KeysendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keysendRequestDescriptor = $convert.base64Decode(
    'Cg5LZXlzZW5kUmVxdWVzdBIgCgtkZXN0aW5hdGlvbhgBIAEoDFILZGVzdGluYXRpb24SGQoFbG'
    'FiZWwYAyABKAlIAFIFbGFiZWyIAQESKQoNbWF4ZmVlcGVyY2VudBgEIAEoAUgBUg1tYXhmZWVw'
    'ZXJjZW50iAEBEiAKCXJldHJ5X2ZvchgFIAEoDUgCUghyZXRyeUZvcogBARIfCghtYXhkZWxheR'
    'gGIAEoDUgDUghtYXhkZWxheYgBARIuCglleGVtcHRmZWUYByABKAsyCy5jbG4uQW1vdW50SARS'
    'CWV4ZW1wdGZlZYgBARI3Cgpyb3V0ZWhpbnRzGAggASgLMhIuY2xuLlJvdXRlaGludExpc3RIBV'
    'IKcm91dGVoaW50c4gBARIxCglleHRyYXRsdnMYCSABKAsyDi5jbG4uVGx2U3RyZWFtSAZSCWV4'
    'dHJhdGx2c4gBARIsCgthbW91bnRfbXNhdBgKIAEoCzILLmNsbi5BbW91bnRSCmFtb3VudE1zYX'
    'RCCAoGX2xhYmVsQhAKDl9tYXhmZWVwZXJjZW50QgwKCl9yZXRyeV9mb3JCCwoJX21heGRlbGF5'
    'QgwKCl9leGVtcHRmZWVCDQoLX3JvdXRlaGludHNCDAoKX2V4dHJhdGx2cw==');

@$core.Deprecated('Use keysendResponseDescriptor instead')
const KeysendResponse$json = {
  '1': 'KeysendResponse',
  '2': [
    {'1': 'payment_preimage', '3': 1, '4': 1, '5': 12, '10': 'paymentPreimage'},
    {'1': 'destination', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'destination', '17': true},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 1, '10': 'createdAt'},
    {'1': 'parts', '3': 5, '4': 1, '5': 13, '10': 'parts'},
    {'1': 'amount_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'amount_sent_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountSentMsat'},
    {'1': 'warning_partial_completion', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'warningPartialCompletion', '17': true},
    {'1': 'status', '3': 9, '4': 1, '5': 14, '6': '.cln.KeysendResponse.KeysendStatus', '10': 'status'},
  ],
  '4': [KeysendResponse_KeysendStatus$json],
  '8': [
    {'1': '_destination'},
    {'1': '_warning_partial_completion'},
  ],
};

@$core.Deprecated('Use keysendResponseDescriptor instead')
const KeysendResponse_KeysendStatus$json = {
  '1': 'KeysendStatus',
  '2': [
    {'1': 'COMPLETE', '2': 0},
  ],
};

/// Descriptor for `KeysendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keysendResponseDescriptor = $convert.base64Decode(
    'Cg9LZXlzZW5kUmVzcG9uc2USKQoQcGF5bWVudF9wcmVpbWFnZRgBIAEoDFIPcGF5bWVudFByZW'
    'ltYWdlEiUKC2Rlc3RpbmF0aW9uGAIgASgMSABSC2Rlc3RpbmF0aW9uiAEBEiEKDHBheW1lbnRf'
    'aGFzaBgDIAEoDFILcGF5bWVudEhhc2gSHQoKY3JlYXRlZF9hdBgEIAEoAVIJY3JlYXRlZEF0Eh'
    'QKBXBhcnRzGAUgASgNUgVwYXJ0cxIsCgthbW91bnRfbXNhdBgGIAEoCzILLmNsbi5BbW91bnRS'
    'CmFtb3VudE1zYXQSNQoQYW1vdW50X3NlbnRfbXNhdBgHIAEoCzILLmNsbi5BbW91bnRSDmFtb3'
    'VudFNlbnRNc2F0EkEKGndhcm5pbmdfcGFydGlhbF9jb21wbGV0aW9uGAggASgJSAFSGHdhcm5p'
    'bmdQYXJ0aWFsQ29tcGxldGlvbogBARI6CgZzdGF0dXMYCSABKA4yIi5jbG4uS2V5c2VuZFJlc3'
    'BvbnNlLktleXNlbmRTdGF0dXNSBnN0YXR1cyIdCg1LZXlzZW5kU3RhdHVzEgwKCENPTVBMRVRF'
    'EABCDgoMX2Rlc3RpbmF0aW9uQh0KG193YXJuaW5nX3BhcnRpYWxfY29tcGxldGlvbg==');

@$core.Deprecated('Use fundpsbtRequestDescriptor instead')
const FundpsbtRequest$json = {
  '1': 'FundpsbtRequest',
  '2': [
    {'1': 'satoshi', '3': 1, '4': 1, '5': 11, '6': '.cln.AmountOrAll', '10': 'satoshi'},
    {'1': 'feerate', '3': 2, '4': 1, '5': 11, '6': '.cln.Feerate', '10': 'feerate'},
    {'1': 'startweight', '3': 3, '4': 1, '5': 13, '10': 'startweight'},
    {'1': 'minconf', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'minconf', '17': true},
    {'1': 'reserve', '3': 5, '4': 1, '5': 13, '9': 1, '10': 'reserve', '17': true},
    {'1': 'locktime', '3': 6, '4': 1, '5': 13, '9': 2, '10': 'locktime', '17': true},
    {'1': 'min_witness_weight', '3': 7, '4': 1, '5': 13, '9': 3, '10': 'minWitnessWeight', '17': true},
    {'1': 'excess_as_change', '3': 8, '4': 1, '5': 8, '9': 4, '10': 'excessAsChange', '17': true},
    {'1': 'nonwrapped', '3': 9, '4': 1, '5': 8, '9': 5, '10': 'nonwrapped', '17': true},
    {'1': 'opening_anchor_channel', '3': 10, '4': 1, '5': 8, '9': 6, '10': 'openingAnchorChannel', '17': true},
  ],
  '8': [
    {'1': '_minconf'},
    {'1': '_reserve'},
    {'1': '_locktime'},
    {'1': '_min_witness_weight'},
    {'1': '_excess_as_change'},
    {'1': '_nonwrapped'},
    {'1': '_opening_anchor_channel'},
  ],
};

/// Descriptor for `FundpsbtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundpsbtRequestDescriptor = $convert.base64Decode(
    'Cg9GdW5kcHNidFJlcXVlc3QSKgoHc2F0b3NoaRgBIAEoCzIQLmNsbi5BbW91bnRPckFsbFIHc2'
    'F0b3NoaRImCgdmZWVyYXRlGAIgASgLMgwuY2xuLkZlZXJhdGVSB2ZlZXJhdGUSIAoLc3RhcnR3'
    'ZWlnaHQYAyABKA1SC3N0YXJ0d2VpZ2h0Eh0KB21pbmNvbmYYBCABKA1IAFIHbWluY29uZogBAR'
    'IdCgdyZXNlcnZlGAUgASgNSAFSB3Jlc2VydmWIAQESHwoIbG9ja3RpbWUYBiABKA1IAlIIbG9j'
    'a3RpbWWIAQESMQoSbWluX3dpdG5lc3Nfd2VpZ2h0GAcgASgNSANSEG1pbldpdG5lc3NXZWlnaH'
    'SIAQESLQoQZXhjZXNzX2FzX2NoYW5nZRgIIAEoCEgEUg5leGNlc3NBc0NoYW5nZYgBARIjCgpu'
    'b253cmFwcGVkGAkgASgISAVSCm5vbndyYXBwZWSIAQESOQoWb3BlbmluZ19hbmNob3JfY2hhbm'
    '5lbBgKIAEoCEgGUhRvcGVuaW5nQW5jaG9yQ2hhbm5lbIgBAUIKCghfbWluY29uZkIKCghfcmVz'
    'ZXJ2ZUILCglfbG9ja3RpbWVCFQoTX21pbl93aXRuZXNzX3dlaWdodEITChFfZXhjZXNzX2FzX2'
    'NoYW5nZUINCgtfbm9ud3JhcHBlZEIZChdfb3BlbmluZ19hbmNob3JfY2hhbm5lbA==');

@$core.Deprecated('Use fundpsbtResponseDescriptor instead')
const FundpsbtResponse$json = {
  '1': 'FundpsbtResponse',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'feerate_per_kw', '3': 2, '4': 1, '5': 13, '10': 'feeratePerKw'},
    {'1': 'estimated_final_weight', '3': 3, '4': 1, '5': 13, '10': 'estimatedFinalWeight'},
    {'1': 'excess_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'excessMsat'},
    {'1': 'change_outnum', '3': 5, '4': 1, '5': 13, '9': 0, '10': 'changeOutnum', '17': true},
    {'1': 'reservations', '3': 6, '4': 3, '5': 11, '6': '.cln.FundpsbtReservations', '10': 'reservations'},
  ],
  '8': [
    {'1': '_change_outnum'},
  ],
};

/// Descriptor for `FundpsbtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundpsbtResponseDescriptor = $convert.base64Decode(
    'ChBGdW5kcHNidFJlc3BvbnNlEhIKBHBzYnQYASABKAlSBHBzYnQSJAoOZmVlcmF0ZV9wZXJfa3'
    'cYAiABKA1SDGZlZXJhdGVQZXJLdxI0ChZlc3RpbWF0ZWRfZmluYWxfd2VpZ2h0GAMgASgNUhRl'
    'c3RpbWF0ZWRGaW5hbFdlaWdodBIsCgtleGNlc3NfbXNhdBgEIAEoCzILLmNsbi5BbW91bnRSCm'
    'V4Y2Vzc01zYXQSKAoNY2hhbmdlX291dG51bRgFIAEoDUgAUgxjaGFuZ2VPdXRudW2IAQESPQoM'
    'cmVzZXJ2YXRpb25zGAYgAygLMhkuY2xuLkZ1bmRwc2J0UmVzZXJ2YXRpb25zUgxyZXNlcnZhdG'
    'lvbnNCEAoOX2NoYW5nZV9vdXRudW0=');

@$core.Deprecated('Use fundpsbtReservationsDescriptor instead')
const FundpsbtReservations$json = {
  '1': 'FundpsbtReservations',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'vout', '3': 2, '4': 1, '5': 13, '10': 'vout'},
    {'1': 'was_reserved', '3': 3, '4': 1, '5': 8, '10': 'wasReserved'},
    {'1': 'reserved', '3': 4, '4': 1, '5': 8, '10': 'reserved'},
    {'1': 'reserved_to_block', '3': 5, '4': 1, '5': 13, '10': 'reservedToBlock'},
  ],
};

/// Descriptor for `FundpsbtReservations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundpsbtReservationsDescriptor = $convert.base64Decode(
    'ChRGdW5kcHNidFJlc2VydmF0aW9ucxISCgR0eGlkGAEgASgMUgR0eGlkEhIKBHZvdXQYAiABKA'
    '1SBHZvdXQSIQoMd2FzX3Jlc2VydmVkGAMgASgIUgt3YXNSZXNlcnZlZBIaCghyZXNlcnZlZBgE'
    'IAEoCFIIcmVzZXJ2ZWQSKgoRcmVzZXJ2ZWRfdG9fYmxvY2sYBSABKA1SD3Jlc2VydmVkVG9CbG'
    '9jaw==');

@$core.Deprecated('Use sendpsbtRequestDescriptor instead')
const SendpsbtRequest$json = {
  '1': 'SendpsbtRequest',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'reserve', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'reserve', '17': true},
  ],
  '8': [
    {'1': '_reserve'},
  ],
};

/// Descriptor for `SendpsbtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendpsbtRequestDescriptor = $convert.base64Decode(
    'Cg9TZW5kcHNidFJlcXVlc3QSEgoEcHNidBgBIAEoCVIEcHNidBIdCgdyZXNlcnZlGAIgASgNSA'
    'BSB3Jlc2VydmWIAQFCCgoIX3Jlc2VydmU=');

@$core.Deprecated('Use sendpsbtResponseDescriptor instead')
const SendpsbtResponse$json = {
  '1': 'SendpsbtResponse',
  '2': [
    {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
    {'1': 'txid', '3': 2, '4': 1, '5': 12, '10': 'txid'},
  ],
};

/// Descriptor for `SendpsbtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendpsbtResponseDescriptor = $convert.base64Decode(
    'ChBTZW5kcHNidFJlc3BvbnNlEg4KAnR4GAEgASgMUgJ0eBISCgR0eGlkGAIgASgMUgR0eGlk');

@$core.Deprecated('Use signpsbtRequestDescriptor instead')
const SignpsbtRequest$json = {
  '1': 'SignpsbtRequest',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'signonly', '3': 2, '4': 3, '5': 13, '10': 'signonly'},
  ],
};

/// Descriptor for `SignpsbtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signpsbtRequestDescriptor = $convert.base64Decode(
    'Cg9TaWducHNidFJlcXVlc3QSEgoEcHNidBgBIAEoCVIEcHNidBIaCghzaWdub25seRgCIAMoDV'
    'IIc2lnbm9ubHk=');

@$core.Deprecated('Use signpsbtResponseDescriptor instead')
const SignpsbtResponse$json = {
  '1': 'SignpsbtResponse',
  '2': [
    {'1': 'signed_psbt', '3': 1, '4': 1, '5': 9, '10': 'signedPsbt'},
  ],
};

/// Descriptor for `SignpsbtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signpsbtResponseDescriptor = $convert.base64Decode(
    'ChBTaWducHNidFJlc3BvbnNlEh8KC3NpZ25lZF9wc2J0GAEgASgJUgpzaWduZWRQc2J0');

@$core.Deprecated('Use utxopsbtRequestDescriptor instead')
const UtxopsbtRequest$json = {
  '1': 'UtxopsbtRequest',
  '2': [
    {'1': 'satoshi', '3': 1, '4': 1, '5': 11, '6': '.cln.AmountOrAll', '10': 'satoshi'},
    {'1': 'feerate', '3': 2, '4': 1, '5': 11, '6': '.cln.Feerate', '10': 'feerate'},
    {'1': 'startweight', '3': 3, '4': 1, '5': 13, '10': 'startweight'},
    {'1': 'utxos', '3': 4, '4': 3, '5': 11, '6': '.cln.Outpoint', '10': 'utxos'},
    {'1': 'reserve', '3': 5, '4': 1, '5': 13, '9': 0, '10': 'reserve', '17': true},
    {'1': 'locktime', '3': 6, '4': 1, '5': 13, '9': 1, '10': 'locktime', '17': true},
    {'1': 'min_witness_weight', '3': 7, '4': 1, '5': 13, '9': 2, '10': 'minWitnessWeight', '17': true},
    {'1': 'reservedok', '3': 8, '4': 1, '5': 8, '9': 3, '10': 'reservedok', '17': true},
    {'1': 'excess_as_change', '3': 9, '4': 1, '5': 8, '9': 4, '10': 'excessAsChange', '17': true},
    {'1': 'opening_anchor_channel', '3': 10, '4': 1, '5': 8, '9': 5, '10': 'openingAnchorChannel', '17': true},
  ],
  '8': [
    {'1': '_reserve'},
    {'1': '_locktime'},
    {'1': '_min_witness_weight'},
    {'1': '_reservedok'},
    {'1': '_excess_as_change'},
    {'1': '_opening_anchor_channel'},
  ],
};

/// Descriptor for `UtxopsbtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxopsbtRequestDescriptor = $convert.base64Decode(
    'Cg9VdHhvcHNidFJlcXVlc3QSKgoHc2F0b3NoaRgBIAEoCzIQLmNsbi5BbW91bnRPckFsbFIHc2'
    'F0b3NoaRImCgdmZWVyYXRlGAIgASgLMgwuY2xuLkZlZXJhdGVSB2ZlZXJhdGUSIAoLc3RhcnR3'
    'ZWlnaHQYAyABKA1SC3N0YXJ0d2VpZ2h0EiMKBXV0eG9zGAQgAygLMg0uY2xuLk91dHBvaW50Ug'
    'V1dHhvcxIdCgdyZXNlcnZlGAUgASgNSABSB3Jlc2VydmWIAQESHwoIbG9ja3RpbWUYBiABKA1I'
    'AVIIbG9ja3RpbWWIAQESMQoSbWluX3dpdG5lc3Nfd2VpZ2h0GAcgASgNSAJSEG1pbldpdG5lc3'
    'NXZWlnaHSIAQESIwoKcmVzZXJ2ZWRvaxgIIAEoCEgDUgpyZXNlcnZlZG9riAEBEi0KEGV4Y2Vz'
    'c19hc19jaGFuZ2UYCSABKAhIBFIOZXhjZXNzQXNDaGFuZ2WIAQESOQoWb3BlbmluZ19hbmNob3'
    'JfY2hhbm5lbBgKIAEoCEgFUhRvcGVuaW5nQW5jaG9yQ2hhbm5lbIgBAUIKCghfcmVzZXJ2ZUIL'
    'CglfbG9ja3RpbWVCFQoTX21pbl93aXRuZXNzX3dlaWdodEINCgtfcmVzZXJ2ZWRva0ITChFfZX'
    'hjZXNzX2FzX2NoYW5nZUIZChdfb3BlbmluZ19hbmNob3JfY2hhbm5lbA==');

@$core.Deprecated('Use utxopsbtResponseDescriptor instead')
const UtxopsbtResponse$json = {
  '1': 'UtxopsbtResponse',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'feerate_per_kw', '3': 2, '4': 1, '5': 13, '10': 'feeratePerKw'},
    {'1': 'estimated_final_weight', '3': 3, '4': 1, '5': 13, '10': 'estimatedFinalWeight'},
    {'1': 'excess_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'excessMsat'},
    {'1': 'change_outnum', '3': 5, '4': 1, '5': 13, '9': 0, '10': 'changeOutnum', '17': true},
    {'1': 'reservations', '3': 6, '4': 3, '5': 11, '6': '.cln.UtxopsbtReservations', '10': 'reservations'},
  ],
  '8': [
    {'1': '_change_outnum'},
  ],
};

/// Descriptor for `UtxopsbtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxopsbtResponseDescriptor = $convert.base64Decode(
    'ChBVdHhvcHNidFJlc3BvbnNlEhIKBHBzYnQYASABKAlSBHBzYnQSJAoOZmVlcmF0ZV9wZXJfa3'
    'cYAiABKA1SDGZlZXJhdGVQZXJLdxI0ChZlc3RpbWF0ZWRfZmluYWxfd2VpZ2h0GAMgASgNUhRl'
    'c3RpbWF0ZWRGaW5hbFdlaWdodBIsCgtleGNlc3NfbXNhdBgEIAEoCzILLmNsbi5BbW91bnRSCm'
    'V4Y2Vzc01zYXQSKAoNY2hhbmdlX291dG51bRgFIAEoDUgAUgxjaGFuZ2VPdXRudW2IAQESPQoM'
    'cmVzZXJ2YXRpb25zGAYgAygLMhkuY2xuLlV0eG9wc2J0UmVzZXJ2YXRpb25zUgxyZXNlcnZhdG'
    'lvbnNCEAoOX2NoYW5nZV9vdXRudW0=');

@$core.Deprecated('Use utxopsbtReservationsDescriptor instead')
const UtxopsbtReservations$json = {
  '1': 'UtxopsbtReservations',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'vout', '3': 2, '4': 1, '5': 13, '10': 'vout'},
    {'1': 'was_reserved', '3': 3, '4': 1, '5': 8, '10': 'wasReserved'},
    {'1': 'reserved', '3': 4, '4': 1, '5': 8, '10': 'reserved'},
    {'1': 'reserved_to_block', '3': 5, '4': 1, '5': 13, '10': 'reservedToBlock'},
  ],
};

/// Descriptor for `UtxopsbtReservations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxopsbtReservationsDescriptor = $convert.base64Decode(
    'ChRVdHhvcHNidFJlc2VydmF0aW9ucxISCgR0eGlkGAEgASgMUgR0eGlkEhIKBHZvdXQYAiABKA'
    '1SBHZvdXQSIQoMd2FzX3Jlc2VydmVkGAMgASgIUgt3YXNSZXNlcnZlZBIaCghyZXNlcnZlZBgE'
    'IAEoCFIIcmVzZXJ2ZWQSKgoRcmVzZXJ2ZWRfdG9fYmxvY2sYBSABKA1SD3Jlc2VydmVkVG9CbG'
    '9jaw==');

@$core.Deprecated('Use txdiscardRequestDescriptor instead')
const TxdiscardRequest$json = {
  '1': 'TxdiscardRequest',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
  ],
};

/// Descriptor for `TxdiscardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txdiscardRequestDescriptor = $convert.base64Decode(
    'ChBUeGRpc2NhcmRSZXF1ZXN0EhIKBHR4aWQYASABKAxSBHR4aWQ=');

@$core.Deprecated('Use txdiscardResponseDescriptor instead')
const TxdiscardResponse$json = {
  '1': 'TxdiscardResponse',
  '2': [
    {'1': 'unsigned_tx', '3': 1, '4': 1, '5': 12, '10': 'unsignedTx'},
    {'1': 'txid', '3': 2, '4': 1, '5': 12, '10': 'txid'},
  ],
};

/// Descriptor for `TxdiscardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txdiscardResponseDescriptor = $convert.base64Decode(
    'ChFUeGRpc2NhcmRSZXNwb25zZRIfCgt1bnNpZ25lZF90eBgBIAEoDFIKdW5zaWduZWRUeBISCg'
    'R0eGlkGAIgASgMUgR0eGlk');

@$core.Deprecated('Use txprepareRequestDescriptor instead')
const TxprepareRequest$json = {
  '1': 'TxprepareRequest',
  '2': [
    {'1': 'feerate', '3': 2, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 0, '10': 'feerate', '17': true},
    {'1': 'minconf', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'minconf', '17': true},
    {'1': 'utxos', '3': 4, '4': 3, '5': 11, '6': '.cln.Outpoint', '10': 'utxos'},
    {'1': 'outputs', '3': 5, '4': 3, '5': 11, '6': '.cln.OutputDesc', '10': 'outputs'},
  ],
  '8': [
    {'1': '_feerate'},
    {'1': '_minconf'},
  ],
};

/// Descriptor for `TxprepareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txprepareRequestDescriptor = $convert.base64Decode(
    'ChBUeHByZXBhcmVSZXF1ZXN0EisKB2ZlZXJhdGUYAiABKAsyDC5jbG4uRmVlcmF0ZUgAUgdmZW'
    'VyYXRliAEBEh0KB21pbmNvbmYYAyABKA1IAVIHbWluY29uZogBARIjCgV1dHhvcxgEIAMoCzIN'
    'LmNsbi5PdXRwb2ludFIFdXR4b3MSKQoHb3V0cHV0cxgFIAMoCzIPLmNsbi5PdXRwdXREZXNjUg'
    'dvdXRwdXRzQgoKCF9mZWVyYXRlQgoKCF9taW5jb25m');

@$core.Deprecated('Use txprepareResponseDescriptor instead')
const TxprepareResponse$json = {
  '1': 'TxprepareResponse',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'unsigned_tx', '3': 2, '4': 1, '5': 12, '10': 'unsignedTx'},
    {'1': 'txid', '3': 3, '4': 1, '5': 12, '10': 'txid'},
  ],
};

/// Descriptor for `TxprepareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txprepareResponseDescriptor = $convert.base64Decode(
    'ChFUeHByZXBhcmVSZXNwb25zZRISCgRwc2J0GAEgASgJUgRwc2J0Eh8KC3Vuc2lnbmVkX3R4GA'
    'IgASgMUgp1bnNpZ25lZFR4EhIKBHR4aWQYAyABKAxSBHR4aWQ=');

@$core.Deprecated('Use txsendRequestDescriptor instead')
const TxsendRequest$json = {
  '1': 'TxsendRequest',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
  ],
};

/// Descriptor for `TxsendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txsendRequestDescriptor = $convert.base64Decode(
    'Cg1UeHNlbmRSZXF1ZXN0EhIKBHR4aWQYASABKAxSBHR4aWQ=');

@$core.Deprecated('Use txsendResponseDescriptor instead')
const TxsendResponse$json = {
  '1': 'TxsendResponse',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'tx', '3': 2, '4': 1, '5': 12, '10': 'tx'},
    {'1': 'txid', '3': 3, '4': 1, '5': 12, '10': 'txid'},
  ],
};

/// Descriptor for `TxsendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txsendResponseDescriptor = $convert.base64Decode(
    'Cg5UeHNlbmRSZXNwb25zZRISCgRwc2J0GAEgASgJUgRwc2J0Eg4KAnR4GAIgASgMUgJ0eBISCg'
    'R0eGlkGAMgASgMUgR0eGlk');

@$core.Deprecated('Use listpeerchannelsRequestDescriptor instead')
const ListpeerchannelsRequest$json = {
  '1': 'ListpeerchannelsRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'id', '17': true},
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `ListpeerchannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0cGVlcmNoYW5uZWxzUmVxdWVzdBITCgJpZBgBIAEoDEgAUgJpZIgBAUIFCgNfaWQ=');

@$core.Deprecated('Use listpeerchannelsResponseDescriptor instead')
const ListpeerchannelsResponse$json = {
  '1': 'ListpeerchannelsResponse',
  '2': [
    {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.cln.ListpeerchannelsChannels', '10': 'channels'},
  ],
};

/// Descriptor for `ListpeerchannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0cGVlcmNoYW5uZWxzUmVzcG9uc2USOQoIY2hhbm5lbHMYASADKAsyHS5jbG4uTGlzdH'
    'BlZXJjaGFubmVsc0NoYW5uZWxzUghjaGFubmVscw==');

@$core.Deprecated('Use listpeerchannelsChannelsDescriptor instead')
const ListpeerchannelsChannels$json = {
  '1': 'ListpeerchannelsChannels',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 12, '10': 'peerId'},
    {'1': 'peer_connected', '3': 2, '4': 1, '5': 8, '10': 'peerConnected'},
    {'1': 'state', '3': 3, '4': 1, '5': 14, '6': '.cln.ListpeerchannelsChannels.ListpeerchannelsChannelsState', '10': 'state'},
    {'1': 'scratch_txid', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'scratchTxid', '17': true},
    {'1': 'feerate', '3': 6, '4': 1, '5': 11, '6': '.cln.ListpeerchannelsChannelsFeerate', '9': 1, '10': 'feerate', '17': true},
    {'1': 'owner', '3': 7, '4': 1, '5': 9, '9': 2, '10': 'owner', '17': true},
    {'1': 'short_channel_id', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'shortChannelId', '17': true},
    {'1': 'channel_id', '3': 9, '4': 1, '5': 12, '9': 4, '10': 'channelId', '17': true},
    {'1': 'funding_txid', '3': 10, '4': 1, '5': 12, '9': 5, '10': 'fundingTxid', '17': true},
    {'1': 'funding_outnum', '3': 11, '4': 1, '5': 13, '9': 6, '10': 'fundingOutnum', '17': true},
    {'1': 'initial_feerate', '3': 12, '4': 1, '5': 9, '9': 7, '10': 'initialFeerate', '17': true},
    {'1': 'last_feerate', '3': 13, '4': 1, '5': 9, '9': 8, '10': 'lastFeerate', '17': true},
    {'1': 'next_feerate', '3': 14, '4': 1, '5': 9, '9': 9, '10': 'nextFeerate', '17': true},
    {'1': 'next_fee_step', '3': 15, '4': 1, '5': 13, '9': 10, '10': 'nextFeeStep', '17': true},
    {'1': 'inflight', '3': 16, '4': 3, '5': 11, '6': '.cln.ListpeerchannelsChannelsInflight', '10': 'inflight'},
    {'1': 'close_to', '3': 17, '4': 1, '5': 12, '9': 11, '10': 'closeTo', '17': true},
    {'1': 'private', '3': 18, '4': 1, '5': 8, '9': 12, '10': 'private', '17': true},
    {'1': 'opener', '3': 19, '4': 1, '5': 14, '6': '.cln.ChannelSide', '10': 'opener'},
    {'1': 'closer', '3': 20, '4': 1, '5': 14, '6': '.cln.ChannelSide', '9': 13, '10': 'closer', '17': true},
    {'1': 'funding', '3': 22, '4': 1, '5': 11, '6': '.cln.ListpeerchannelsChannelsFunding', '9': 14, '10': 'funding', '17': true},
    {'1': 'to_us_msat', '3': 23, '4': 1, '5': 11, '6': '.cln.Amount', '9': 15, '10': 'toUsMsat', '17': true},
    {'1': 'min_to_us_msat', '3': 24, '4': 1, '5': 11, '6': '.cln.Amount', '9': 16, '10': 'minToUsMsat', '17': true},
    {'1': 'max_to_us_msat', '3': 25, '4': 1, '5': 11, '6': '.cln.Amount', '9': 17, '10': 'maxToUsMsat', '17': true},
    {'1': 'total_msat', '3': 26, '4': 1, '5': 11, '6': '.cln.Amount', '9': 18, '10': 'totalMsat', '17': true},
    {'1': 'fee_base_msat', '3': 27, '4': 1, '5': 11, '6': '.cln.Amount', '9': 19, '10': 'feeBaseMsat', '17': true},
    {'1': 'fee_proportional_millionths', '3': 28, '4': 1, '5': 13, '9': 20, '10': 'feeProportionalMillionths', '17': true},
    {'1': 'dust_limit_msat', '3': 29, '4': 1, '5': 11, '6': '.cln.Amount', '9': 21, '10': 'dustLimitMsat', '17': true},
    {'1': 'max_total_htlc_in_msat', '3': 30, '4': 1, '5': 11, '6': '.cln.Amount', '9': 22, '10': 'maxTotalHtlcInMsat', '17': true},
    {'1': 'their_reserve_msat', '3': 31, '4': 1, '5': 11, '6': '.cln.Amount', '9': 23, '10': 'theirReserveMsat', '17': true},
    {'1': 'our_reserve_msat', '3': 32, '4': 1, '5': 11, '6': '.cln.Amount', '9': 24, '10': 'ourReserveMsat', '17': true},
    {'1': 'spendable_msat', '3': 33, '4': 1, '5': 11, '6': '.cln.Amount', '9': 25, '10': 'spendableMsat', '17': true},
    {'1': 'receivable_msat', '3': 34, '4': 1, '5': 11, '6': '.cln.Amount', '9': 26, '10': 'receivableMsat', '17': true},
    {'1': 'minimum_htlc_in_msat', '3': 35, '4': 1, '5': 11, '6': '.cln.Amount', '9': 27, '10': 'minimumHtlcInMsat', '17': true},
    {'1': 'minimum_htlc_out_msat', '3': 36, '4': 1, '5': 11, '6': '.cln.Amount', '9': 28, '10': 'minimumHtlcOutMsat', '17': true},
    {'1': 'maximum_htlc_out_msat', '3': 37, '4': 1, '5': 11, '6': '.cln.Amount', '9': 29, '10': 'maximumHtlcOutMsat', '17': true},
    {'1': 'their_to_self_delay', '3': 38, '4': 1, '5': 13, '9': 30, '10': 'theirToSelfDelay', '17': true},
    {'1': 'our_to_self_delay', '3': 39, '4': 1, '5': 13, '9': 31, '10': 'ourToSelfDelay', '17': true},
    {'1': 'max_accepted_htlcs', '3': 40, '4': 1, '5': 13, '9': 32, '10': 'maxAcceptedHtlcs', '17': true},
    {'1': 'alias', '3': 41, '4': 1, '5': 11, '6': '.cln.ListpeerchannelsChannelsAlias', '9': 33, '10': 'alias', '17': true},
    {'1': 'status', '3': 43, '4': 3, '5': 9, '10': 'status'},
    {'1': 'in_payments_offered', '3': 44, '4': 1, '5': 4, '9': 34, '10': 'inPaymentsOffered', '17': true},
    {'1': 'in_offered_msat', '3': 45, '4': 1, '5': 11, '6': '.cln.Amount', '9': 35, '10': 'inOfferedMsat', '17': true},
    {'1': 'in_payments_fulfilled', '3': 46, '4': 1, '5': 4, '9': 36, '10': 'inPaymentsFulfilled', '17': true},
    {'1': 'in_fulfilled_msat', '3': 47, '4': 1, '5': 11, '6': '.cln.Amount', '9': 37, '10': 'inFulfilledMsat', '17': true},
    {'1': 'out_payments_offered', '3': 48, '4': 1, '5': 4, '9': 38, '10': 'outPaymentsOffered', '17': true},
    {'1': 'out_offered_msat', '3': 49, '4': 1, '5': 11, '6': '.cln.Amount', '9': 39, '10': 'outOfferedMsat', '17': true},
    {'1': 'out_payments_fulfilled', '3': 50, '4': 1, '5': 4, '9': 40, '10': 'outPaymentsFulfilled', '17': true},
    {'1': 'out_fulfilled_msat', '3': 51, '4': 1, '5': 11, '6': '.cln.Amount', '9': 41, '10': 'outFulfilledMsat', '17': true},
    {'1': 'htlcs', '3': 52, '4': 3, '5': 11, '6': '.cln.ListpeerchannelsChannelsHtlcs', '10': 'htlcs'},
    {'1': 'close_to_addr', '3': 53, '4': 1, '5': 9, '9': 42, '10': 'closeToAddr', '17': true},
    {'1': 'ignore_fee_limits', '3': 54, '4': 1, '5': 8, '9': 43, '10': 'ignoreFeeLimits', '17': true},
    {'1': 'updates', '3': 55, '4': 1, '5': 11, '6': '.cln.ListpeerchannelsChannelsUpdates', '9': 44, '10': 'updates', '17': true},
    {'1': 'last_stable_connection', '3': 56, '4': 1, '5': 4, '9': 45, '10': 'lastStableConnection', '17': true},
    {'1': 'lost_state', '3': 57, '4': 1, '5': 8, '9': 46, '10': 'lostState', '17': true},
    {'1': 'reestablished', '3': 58, '4': 1, '5': 8, '9': 47, '10': 'reestablished', '17': true},
    {'1': 'last_tx_fee_msat', '3': 59, '4': 1, '5': 11, '6': '.cln.Amount', '9': 48, '10': 'lastTxFeeMsat', '17': true},
    {'1': 'direction', '3': 60, '4': 1, '5': 13, '9': 49, '10': 'direction', '17': true},
  ],
  '4': [ListpeerchannelsChannels_ListpeerchannelsChannelsState$json],
  '8': [
    {'1': '_scratch_txid'},
    {'1': '_feerate'},
    {'1': '_owner'},
    {'1': '_short_channel_id'},
    {'1': '_channel_id'},
    {'1': '_funding_txid'},
    {'1': '_funding_outnum'},
    {'1': '_initial_feerate'},
    {'1': '_last_feerate'},
    {'1': '_next_feerate'},
    {'1': '_next_fee_step'},
    {'1': '_close_to'},
    {'1': '_private'},
    {'1': '_closer'},
    {'1': '_funding'},
    {'1': '_to_us_msat'},
    {'1': '_min_to_us_msat'},
    {'1': '_max_to_us_msat'},
    {'1': '_total_msat'},
    {'1': '_fee_base_msat'},
    {'1': '_fee_proportional_millionths'},
    {'1': '_dust_limit_msat'},
    {'1': '_max_total_htlc_in_msat'},
    {'1': '_their_reserve_msat'},
    {'1': '_our_reserve_msat'},
    {'1': '_spendable_msat'},
    {'1': '_receivable_msat'},
    {'1': '_minimum_htlc_in_msat'},
    {'1': '_minimum_htlc_out_msat'},
    {'1': '_maximum_htlc_out_msat'},
    {'1': '_their_to_self_delay'},
    {'1': '_our_to_self_delay'},
    {'1': '_max_accepted_htlcs'},
    {'1': '_alias'},
    {'1': '_in_payments_offered'},
    {'1': '_in_offered_msat'},
    {'1': '_in_payments_fulfilled'},
    {'1': '_in_fulfilled_msat'},
    {'1': '_out_payments_offered'},
    {'1': '_out_offered_msat'},
    {'1': '_out_payments_fulfilled'},
    {'1': '_out_fulfilled_msat'},
    {'1': '_close_to_addr'},
    {'1': '_ignore_fee_limits'},
    {'1': '_updates'},
    {'1': '_last_stable_connection'},
    {'1': '_lost_state'},
    {'1': '_reestablished'},
    {'1': '_last_tx_fee_msat'},
    {'1': '_direction'},
  ],
};

@$core.Deprecated('Use listpeerchannelsChannelsDescriptor instead')
const ListpeerchannelsChannels_ListpeerchannelsChannelsState$json = {
  '1': 'ListpeerchannelsChannelsState',
  '2': [
    {'1': 'OPENINGD', '2': 0},
    {'1': 'CHANNELD_AWAITING_LOCKIN', '2': 1},
    {'1': 'CHANNELD_NORMAL', '2': 2},
    {'1': 'CHANNELD_SHUTTING_DOWN', '2': 3},
    {'1': 'CLOSINGD_SIGEXCHANGE', '2': 4},
    {'1': 'CLOSINGD_COMPLETE', '2': 5},
    {'1': 'AWAITING_UNILATERAL', '2': 6},
    {'1': 'FUNDING_SPEND_SEEN', '2': 7},
    {'1': 'ONCHAIN', '2': 8},
    {'1': 'DUALOPEND_OPEN_INIT', '2': 9},
    {'1': 'DUALOPEND_AWAITING_LOCKIN', '2': 10},
    {'1': 'CHANNELD_AWAITING_SPLICE', '2': 11},
    {'1': 'DUALOPEND_OPEN_COMMITTED', '2': 12},
    {'1': 'DUALOPEND_OPEN_COMMIT_READY', '2': 13},
  ],
};

/// Descriptor for `ListpeerchannelsChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsDescriptor = $convert.base64Decode(
    'ChhMaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHMSFwoHcGVlcl9pZBgBIAEoDFIGcGVlcklkEiUKDn'
    'BlZXJfY29ubmVjdGVkGAIgASgIUg1wZWVyQ29ubmVjdGVkElEKBXN0YXRlGAMgASgOMjsuY2xu'
    'Lkxpc3RwZWVyY2hhbm5lbHNDaGFubmVscy5MaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNTdGF0ZV'
    'IFc3RhdGUSJgoMc2NyYXRjaF90eGlkGAQgASgMSABSC3NjcmF0Y2hUeGlkiAEBEkMKB2ZlZXJh'
    'dGUYBiABKAsyJC5jbG4uTGlzdHBlZXJjaGFubmVsc0NoYW5uZWxzRmVlcmF0ZUgBUgdmZWVyYX'
    'RliAEBEhkKBW93bmVyGAcgASgJSAJSBW93bmVyiAEBEi0KEHNob3J0X2NoYW5uZWxfaWQYCCAB'
    'KAlIA1IOc2hvcnRDaGFubmVsSWSIAQESIgoKY2hhbm5lbF9pZBgJIAEoDEgEUgljaGFubmVsSW'
    'SIAQESJgoMZnVuZGluZ190eGlkGAogASgMSAVSC2Z1bmRpbmdUeGlkiAEBEioKDmZ1bmRpbmdf'
    'b3V0bnVtGAsgASgNSAZSDWZ1bmRpbmdPdXRudW2IAQESLAoPaW5pdGlhbF9mZWVyYXRlGAwgAS'
    'gJSAdSDmluaXRpYWxGZWVyYXRliAEBEiYKDGxhc3RfZmVlcmF0ZRgNIAEoCUgIUgtsYXN0RmVl'
    'cmF0ZYgBARImCgxuZXh0X2ZlZXJhdGUYDiABKAlICVILbmV4dEZlZXJhdGWIAQESJwoNbmV4dF'
    '9mZWVfc3RlcBgPIAEoDUgKUgtuZXh0RmVlU3RlcIgBARJBCghpbmZsaWdodBgQIAMoCzIlLmNs'
    'bi5MaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNJbmZsaWdodFIIaW5mbGlnaHQSHgoIY2xvc2VfdG'
    '8YESABKAxIC1IHY2xvc2VUb4gBARIdCgdwcml2YXRlGBIgASgISAxSB3ByaXZhdGWIAQESKAoG'
    'b3BlbmVyGBMgASgOMhAuY2xuLkNoYW5uZWxTaWRlUgZvcGVuZXISLQoGY2xvc2VyGBQgASgOMh'
    'AuY2xuLkNoYW5uZWxTaWRlSA1SBmNsb3NlcogBARJDCgdmdW5kaW5nGBYgASgLMiQuY2xuLkxp'
    'c3RwZWVyY2hhbm5lbHNDaGFubmVsc0Z1bmRpbmdIDlIHZnVuZGluZ4gBARIuCgp0b191c19tc2'
    'F0GBcgASgLMgsuY2xuLkFtb3VudEgPUgh0b1VzTXNhdIgBARI1Cg5taW5fdG9fdXNfbXNhdBgY'
    'IAEoCzILLmNsbi5BbW91bnRIEFILbWluVG9Vc01zYXSIAQESNQoObWF4X3RvX3VzX21zYXQYGS'
    'ABKAsyCy5jbG4uQW1vdW50SBFSC21heFRvVXNNc2F0iAEBEi8KCnRvdGFsX21zYXQYGiABKAsy'
    'Cy5jbG4uQW1vdW50SBJSCXRvdGFsTXNhdIgBARI0Cg1mZWVfYmFzZV9tc2F0GBsgASgLMgsuY2'
    'xuLkFtb3VudEgTUgtmZWVCYXNlTXNhdIgBARJDChtmZWVfcHJvcG9ydGlvbmFsX21pbGxpb250'
    'aHMYHCABKA1IFFIZZmVlUHJvcG9ydGlvbmFsTWlsbGlvbnRoc4gBARI4Cg9kdXN0X2xpbWl0X2'
    '1zYXQYHSABKAsyCy5jbG4uQW1vdW50SBVSDWR1c3RMaW1pdE1zYXSIAQESRAoWbWF4X3RvdGFs'
    'X2h0bGNfaW5fbXNhdBgeIAEoCzILLmNsbi5BbW91bnRIFlISbWF4VG90YWxIdGxjSW5Nc2F0iA'
    'EBEj4KEnRoZWlyX3Jlc2VydmVfbXNhdBgfIAEoCzILLmNsbi5BbW91bnRIF1IQdGhlaXJSZXNl'
    'cnZlTXNhdIgBARI6ChBvdXJfcmVzZXJ2ZV9tc2F0GCAgASgLMgsuY2xuLkFtb3VudEgYUg5vdX'
    'JSZXNlcnZlTXNhdIgBARI3Cg5zcGVuZGFibGVfbXNhdBghIAEoCzILLmNsbi5BbW91bnRIGVIN'
    'c3BlbmRhYmxlTXNhdIgBARI5Cg9yZWNlaXZhYmxlX21zYXQYIiABKAsyCy5jbG4uQW1vdW50SB'
    'pSDnJlY2VpdmFibGVNc2F0iAEBEkEKFG1pbmltdW1faHRsY19pbl9tc2F0GCMgASgLMgsuY2xu'
    'LkFtb3VudEgbUhFtaW5pbXVtSHRsY0luTXNhdIgBARJDChVtaW5pbXVtX2h0bGNfb3V0X21zYX'
    'QYJCABKAsyCy5jbG4uQW1vdW50SBxSEm1pbmltdW1IdGxjT3V0TXNhdIgBARJDChVtYXhpbXVt'
    'X2h0bGNfb3V0X21zYXQYJSABKAsyCy5jbG4uQW1vdW50SB1SEm1heGltdW1IdGxjT3V0TXNhdI'
    'gBARIyChN0aGVpcl90b19zZWxmX2RlbGF5GCYgASgNSB5SEHRoZWlyVG9TZWxmRGVsYXmIAQES'
    'LgoRb3VyX3RvX3NlbGZfZGVsYXkYJyABKA1IH1IOb3VyVG9TZWxmRGVsYXmIAQESMQoSbWF4X2'
    'FjY2VwdGVkX2h0bGNzGCggASgNSCBSEG1heEFjY2VwdGVkSHRsY3OIAQESPQoFYWxpYXMYKSAB'
    'KAsyIi5jbG4uTGlzdHBlZXJjaGFubmVsc0NoYW5uZWxzQWxpYXNIIVIFYWxpYXOIAQESFgoGc3'
    'RhdHVzGCsgAygJUgZzdGF0dXMSMwoTaW5fcGF5bWVudHNfb2ZmZXJlZBgsIAEoBEgiUhFpblBh'
    'eW1lbnRzT2ZmZXJlZIgBARI4Cg9pbl9vZmZlcmVkX21zYXQYLSABKAsyCy5jbG4uQW1vdW50SC'
    'NSDWluT2ZmZXJlZE1zYXSIAQESNwoVaW5fcGF5bWVudHNfZnVsZmlsbGVkGC4gASgESCRSE2lu'
    'UGF5bWVudHNGdWxmaWxsZWSIAQESPAoRaW5fZnVsZmlsbGVkX21zYXQYLyABKAsyCy5jbG4uQW'
    '1vdW50SCVSD2luRnVsZmlsbGVkTXNhdIgBARI1ChRvdXRfcGF5bWVudHNfb2ZmZXJlZBgwIAEo'
    'BEgmUhJvdXRQYXltZW50c09mZmVyZWSIAQESOgoQb3V0X29mZmVyZWRfbXNhdBgxIAEoCzILLm'
    'Nsbi5BbW91bnRIJ1IOb3V0T2ZmZXJlZE1zYXSIAQESOQoWb3V0X3BheW1lbnRzX2Z1bGZpbGxl'
    'ZBgyIAEoBEgoUhRvdXRQYXltZW50c0Z1bGZpbGxlZIgBARI+ChJvdXRfZnVsZmlsbGVkX21zYX'
    'QYMyABKAsyCy5jbG4uQW1vdW50SClSEG91dEZ1bGZpbGxlZE1zYXSIAQESOAoFaHRsY3MYNCAD'
    'KAsyIi5jbG4uTGlzdHBlZXJjaGFubmVsc0NoYW5uZWxzSHRsY3NSBWh0bGNzEicKDWNsb3NlX3'
    'RvX2FkZHIYNSABKAlIKlILY2xvc2VUb0FkZHKIAQESLwoRaWdub3JlX2ZlZV9saW1pdHMYNiAB'
    'KAhIK1IPaWdub3JlRmVlTGltaXRziAEBEkMKB3VwZGF0ZXMYNyABKAsyJC5jbG4uTGlzdHBlZX'
    'JjaGFubmVsc0NoYW5uZWxzVXBkYXRlc0gsUgd1cGRhdGVziAEBEjkKFmxhc3Rfc3RhYmxlX2Nv'
    'bm5lY3Rpb24YOCABKARILVIUbGFzdFN0YWJsZUNvbm5lY3Rpb26IAQESIgoKbG9zdF9zdGF0ZR'
    'g5IAEoCEguUglsb3N0U3RhdGWIAQESKQoNcmVlc3RhYmxpc2hlZBg6IAEoCEgvUg1yZWVzdGFi'
    'bGlzaGVkiAEBEjkKEGxhc3RfdHhfZmVlX21zYXQYOyABKAsyCy5jbG4uQW1vdW50SDBSDWxhc3'
    'RUeEZlZU1zYXSIAQESIQoJZGlyZWN0aW9uGDwgASgNSDFSCWRpcmVjdGlvbogBASKAAwodTGlz'
    'dHBlZXJjaGFubmVsc0NoYW5uZWxzU3RhdGUSDAoIT1BFTklOR0QQABIcChhDSEFOTkVMRF9BV0'
    'FJVElOR19MT0NLSU4QARITCg9DSEFOTkVMRF9OT1JNQUwQAhIaChZDSEFOTkVMRF9TSFVUVElO'
    'R19ET1dOEAMSGAoUQ0xPU0lOR0RfU0lHRVhDSEFOR0UQBBIVChFDTE9TSU5HRF9DT01QTEVURR'
    'AFEhcKE0FXQUlUSU5HX1VOSUxBVEVSQUwQBhIWChJGVU5ESU5HX1NQRU5EX1NFRU4QBxILCgdP'
    'TkNIQUlOEAgSFwoTRFVBTE9QRU5EX09QRU5fSU5JVBAJEh0KGURVQUxPUEVORF9BV0FJVElOR1'
    '9MT0NLSU4QChIcChhDSEFOTkVMRF9BV0FJVElOR19TUExJQ0UQCxIcChhEVUFMT1BFTkRfT1BF'
    'Tl9DT01NSVRURUQQDBIfChtEVUFMT1BFTkRfT1BFTl9DT01NSVRfUkVBRFkQDUIPCg1fc2NyYX'
    'RjaF90eGlkQgoKCF9mZWVyYXRlQggKBl9vd25lckITChFfc2hvcnRfY2hhbm5lbF9pZEINCgtf'
    'Y2hhbm5lbF9pZEIPCg1fZnVuZGluZ190eGlkQhEKD19mdW5kaW5nX291dG51bUISChBfaW5pdG'
    'lhbF9mZWVyYXRlQg8KDV9sYXN0X2ZlZXJhdGVCDwoNX25leHRfZmVlcmF0ZUIQCg5fbmV4dF9m'
    'ZWVfc3RlcEILCglfY2xvc2VfdG9CCgoIX3ByaXZhdGVCCQoHX2Nsb3NlckIKCghfZnVuZGluZ0'
    'INCgtfdG9fdXNfbXNhdEIRCg9fbWluX3RvX3VzX21zYXRCEQoPX21heF90b191c19tc2F0Qg0K'
    'C190b3RhbF9tc2F0QhAKDl9mZWVfYmFzZV9tc2F0Qh4KHF9mZWVfcHJvcG9ydGlvbmFsX21pbG'
    'xpb250aHNCEgoQX2R1c3RfbGltaXRfbXNhdEIZChdfbWF4X3RvdGFsX2h0bGNfaW5fbXNhdEIV'
    'ChNfdGhlaXJfcmVzZXJ2ZV9tc2F0QhMKEV9vdXJfcmVzZXJ2ZV9tc2F0QhEKD19zcGVuZGFibG'
    'VfbXNhdEISChBfcmVjZWl2YWJsZV9tc2F0QhcKFV9taW5pbXVtX2h0bGNfaW5fbXNhdEIYChZf'
    'bWluaW11bV9odGxjX291dF9tc2F0QhgKFl9tYXhpbXVtX2h0bGNfb3V0X21zYXRCFgoUX3RoZW'
    'lyX3RvX3NlbGZfZGVsYXlCFAoSX291cl90b19zZWxmX2RlbGF5QhUKE19tYXhfYWNjZXB0ZWRf'
    'aHRsY3NCCAoGX2FsaWFzQhYKFF9pbl9wYXltZW50c19vZmZlcmVkQhIKEF9pbl9vZmZlcmVkX2'
    '1zYXRCGAoWX2luX3BheW1lbnRzX2Z1bGZpbGxlZEIUChJfaW5fZnVsZmlsbGVkX21zYXRCFwoV'
    'X291dF9wYXltZW50c19vZmZlcmVkQhMKEV9vdXRfb2ZmZXJlZF9tc2F0QhkKF19vdXRfcGF5bW'
    'VudHNfZnVsZmlsbGVkQhUKE19vdXRfZnVsZmlsbGVkX21zYXRCEAoOX2Nsb3NlX3RvX2FkZHJC'
    'FAoSX2lnbm9yZV9mZWVfbGltaXRzQgoKCF91cGRhdGVzQhkKF19sYXN0X3N0YWJsZV9jb25uZW'
    'N0aW9uQg0KC19sb3N0X3N0YXRlQhAKDl9yZWVzdGFibGlzaGVkQhMKEV9sYXN0X3R4X2ZlZV9t'
    'c2F0QgwKCl9kaXJlY3Rpb24=');

@$core.Deprecated('Use listpeerchannelsChannelsUpdatesDescriptor instead')
const ListpeerchannelsChannelsUpdates$json = {
  '1': 'ListpeerchannelsChannelsUpdates',
  '2': [
    {'1': 'local', '3': 1, '4': 1, '5': 11, '6': '.cln.ListpeerchannelsChannelsUpdatesLocal', '10': 'local'},
    {'1': 'remote', '3': 2, '4': 1, '5': 11, '6': '.cln.ListpeerchannelsChannelsUpdatesRemote', '9': 0, '10': 'remote', '17': true},
  ],
  '8': [
    {'1': '_remote'},
  ],
};

/// Descriptor for `ListpeerchannelsChannelsUpdates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsUpdatesDescriptor = $convert.base64Decode(
    'Ch9MaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNVcGRhdGVzEj8KBWxvY2FsGAEgASgLMikuY2xuLk'
    'xpc3RwZWVyY2hhbm5lbHNDaGFubmVsc1VwZGF0ZXNMb2NhbFIFbG9jYWwSRwoGcmVtb3RlGAIg'
    'ASgLMiouY2xuLkxpc3RwZWVyY2hhbm5lbHNDaGFubmVsc1VwZGF0ZXNSZW1vdGVIAFIGcmVtb3'
    'RliAEBQgkKB19yZW1vdGU=');

@$core.Deprecated('Use listpeerchannelsChannelsUpdatesLocalDescriptor instead')
const ListpeerchannelsChannelsUpdatesLocal$json = {
  '1': 'ListpeerchannelsChannelsUpdatesLocal',
  '2': [
    {'1': 'htlc_minimum_msat', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'htlcMinimumMsat'},
    {'1': 'htlc_maximum_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'htlcMaximumMsat'},
    {'1': 'cltv_expiry_delta', '3': 3, '4': 1, '5': 13, '10': 'cltvExpiryDelta'},
    {'1': 'fee_base_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'feeBaseMsat'},
    {'1': 'fee_proportional_millionths', '3': 5, '4': 1, '5': 13, '10': 'feeProportionalMillionths'},
  ],
};

/// Descriptor for `ListpeerchannelsChannelsUpdatesLocal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsUpdatesLocalDescriptor = $convert.base64Decode(
    'CiRMaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNVcGRhdGVzTG9jYWwSNwoRaHRsY19taW5pbXVtX2'
    '1zYXQYASABKAsyCy5jbG4uQW1vdW50Ug9odGxjTWluaW11bU1zYXQSNwoRaHRsY19tYXhpbXVt'
    'X21zYXQYAiABKAsyCy5jbG4uQW1vdW50Ug9odGxjTWF4aW11bU1zYXQSKgoRY2x0dl9leHBpcn'
    'lfZGVsdGEYAyABKA1SD2NsdHZFeHBpcnlEZWx0YRIvCg1mZWVfYmFzZV9tc2F0GAQgASgLMgsu'
    'Y2xuLkFtb3VudFILZmVlQmFzZU1zYXQSPgobZmVlX3Byb3BvcnRpb25hbF9taWxsaW9udGhzGA'
    'UgASgNUhlmZWVQcm9wb3J0aW9uYWxNaWxsaW9udGhz');

@$core.Deprecated('Use listpeerchannelsChannelsUpdatesRemoteDescriptor instead')
const ListpeerchannelsChannelsUpdatesRemote$json = {
  '1': 'ListpeerchannelsChannelsUpdatesRemote',
  '2': [
    {'1': 'htlc_minimum_msat', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'htlcMinimumMsat'},
    {'1': 'htlc_maximum_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'htlcMaximumMsat'},
    {'1': 'cltv_expiry_delta', '3': 3, '4': 1, '5': 13, '10': 'cltvExpiryDelta'},
    {'1': 'fee_base_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'feeBaseMsat'},
    {'1': 'fee_proportional_millionths', '3': 5, '4': 1, '5': 13, '10': 'feeProportionalMillionths'},
  ],
};

/// Descriptor for `ListpeerchannelsChannelsUpdatesRemote`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsUpdatesRemoteDescriptor = $convert.base64Decode(
    'CiVMaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNVcGRhdGVzUmVtb3RlEjcKEWh0bGNfbWluaW11bV'
    '9tc2F0GAEgASgLMgsuY2xuLkFtb3VudFIPaHRsY01pbmltdW1Nc2F0EjcKEWh0bGNfbWF4aW11'
    'bV9tc2F0GAIgASgLMgsuY2xuLkFtb3VudFIPaHRsY01heGltdW1Nc2F0EioKEWNsdHZfZXhwaX'
    'J5X2RlbHRhGAMgASgNUg9jbHR2RXhwaXJ5RGVsdGESLwoNZmVlX2Jhc2VfbXNhdBgEIAEoCzIL'
    'LmNsbi5BbW91bnRSC2ZlZUJhc2VNc2F0Ej4KG2ZlZV9wcm9wb3J0aW9uYWxfbWlsbGlvbnRocx'
    'gFIAEoDVIZZmVlUHJvcG9ydGlvbmFsTWlsbGlvbnRocw==');

@$core.Deprecated('Use listpeerchannelsChannelsFeerateDescriptor instead')
const ListpeerchannelsChannelsFeerate$json = {
  '1': 'ListpeerchannelsChannelsFeerate',
  '2': [
    {'1': 'perkw', '3': 1, '4': 1, '5': 13, '10': 'perkw'},
    {'1': 'perkb', '3': 2, '4': 1, '5': 13, '10': 'perkb'},
  ],
};

/// Descriptor for `ListpeerchannelsChannelsFeerate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsFeerateDescriptor = $convert.base64Decode(
    'Ch9MaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNGZWVyYXRlEhQKBXBlcmt3GAEgASgNUgVwZXJrdx'
    'IUCgVwZXJrYhgCIAEoDVIFcGVya2I=');

@$core.Deprecated('Use listpeerchannelsChannelsInflightDescriptor instead')
const ListpeerchannelsChannelsInflight$json = {
  '1': 'ListpeerchannelsChannelsInflight',
  '2': [
    {'1': 'funding_txid', '3': 1, '4': 1, '5': 12, '10': 'fundingTxid'},
    {'1': 'funding_outnum', '3': 2, '4': 1, '5': 13, '10': 'fundingOutnum'},
    {'1': 'feerate', '3': 3, '4': 1, '5': 9, '10': 'feerate'},
    {'1': 'total_funding_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'totalFundingMsat'},
    {'1': 'our_funding_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'ourFundingMsat'},
    {'1': 'scratch_txid', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'scratchTxid', '17': true},
    {'1': 'splice_amount', '3': 7, '4': 1, '5': 18, '9': 1, '10': 'spliceAmount', '17': true},
  ],
  '8': [
    {'1': '_scratch_txid'},
    {'1': '_splice_amount'},
  ],
};

/// Descriptor for `ListpeerchannelsChannelsInflight`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsInflightDescriptor = $convert.base64Decode(
    'CiBMaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNJbmZsaWdodBIhCgxmdW5kaW5nX3R4aWQYASABKA'
    'xSC2Z1bmRpbmdUeGlkEiUKDmZ1bmRpbmdfb3V0bnVtGAIgASgNUg1mdW5kaW5nT3V0bnVtEhgK'
    'B2ZlZXJhdGUYAyABKAlSB2ZlZXJhdGUSOQoSdG90YWxfZnVuZGluZ19tc2F0GAQgASgLMgsuY2'
    'xuLkFtb3VudFIQdG90YWxGdW5kaW5nTXNhdBI1ChBvdXJfZnVuZGluZ19tc2F0GAUgASgLMgsu'
    'Y2xuLkFtb3VudFIOb3VyRnVuZGluZ01zYXQSJgoMc2NyYXRjaF90eGlkGAYgASgMSABSC3Njcm'
    'F0Y2hUeGlkiAEBEigKDXNwbGljZV9hbW91bnQYByABKBJIAVIMc3BsaWNlQW1vdW50iAEBQg8K'
    'DV9zY3JhdGNoX3R4aWRCEAoOX3NwbGljZV9hbW91bnQ=');

@$core.Deprecated('Use listpeerchannelsChannelsFundingDescriptor instead')
const ListpeerchannelsChannelsFunding$json = {
  '1': 'ListpeerchannelsChannelsFunding',
  '2': [
    {'1': 'pushed_msat', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'pushedMsat', '17': true},
    {'1': 'local_funds_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'localFundsMsat'},
    {'1': 'remote_funds_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'remoteFundsMsat'},
    {'1': 'fee_paid_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'feePaidMsat', '17': true},
    {'1': 'fee_rcvd_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 2, '10': 'feeRcvdMsat', '17': true},
  ],
  '8': [
    {'1': '_pushed_msat'},
    {'1': '_fee_paid_msat'},
    {'1': '_fee_rcvd_msat'},
  ],
};

/// Descriptor for `ListpeerchannelsChannelsFunding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsFundingDescriptor = $convert.base64Decode(
    'Ch9MaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNGdW5kaW5nEjEKC3B1c2hlZF9tc2F0GAEgASgLMg'
    'suY2xuLkFtb3VudEgAUgpwdXNoZWRNc2F0iAEBEjUKEGxvY2FsX2Z1bmRzX21zYXQYAiABKAsy'
    'Cy5jbG4uQW1vdW50Ug5sb2NhbEZ1bmRzTXNhdBI3ChFyZW1vdGVfZnVuZHNfbXNhdBgDIAEoCz'
    'ILLmNsbi5BbW91bnRSD3JlbW90ZUZ1bmRzTXNhdBI0Cg1mZWVfcGFpZF9tc2F0GAQgASgLMgsu'
    'Y2xuLkFtb3VudEgBUgtmZWVQYWlkTXNhdIgBARI0Cg1mZWVfcmN2ZF9tc2F0GAUgASgLMgsuY2'
    'xuLkFtb3VudEgCUgtmZWVSY3ZkTXNhdIgBAUIOCgxfcHVzaGVkX21zYXRCEAoOX2ZlZV9wYWlk'
    'X21zYXRCEAoOX2ZlZV9yY3ZkX21zYXQ=');

@$core.Deprecated('Use listpeerchannelsChannelsAliasDescriptor instead')
const ListpeerchannelsChannelsAlias$json = {
  '1': 'ListpeerchannelsChannelsAlias',
  '2': [
    {'1': 'local', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'local', '17': true},
    {'1': 'remote', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'remote', '17': true},
  ],
  '8': [
    {'1': '_local'},
    {'1': '_remote'},
  ],
};

/// Descriptor for `ListpeerchannelsChannelsAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsAliasDescriptor = $convert.base64Decode(
    'Ch1MaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNBbGlhcxIZCgVsb2NhbBgBIAEoCUgAUgVsb2NhbI'
    'gBARIbCgZyZW1vdGUYAiABKAlIAVIGcmVtb3RliAEBQggKBl9sb2NhbEIJCgdfcmVtb3Rl');

@$core.Deprecated('Use listpeerchannelsChannelsHtlcsDescriptor instead')
const ListpeerchannelsChannelsHtlcs$json = {
  '1': 'ListpeerchannelsChannelsHtlcs',
  '2': [
    {'1': 'direction', '3': 1, '4': 1, '5': 14, '6': '.cln.ListpeerchannelsChannelsHtlcs.ListpeerchannelsChannelsHtlcsDirection', '10': 'direction'},
    {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    {'1': 'amount_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'expiry', '3': 4, '4': 1, '5': 13, '10': 'expiry'},
    {'1': 'payment_hash', '3': 5, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'local_trimmed', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'localTrimmed', '17': true},
    {'1': 'status', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'status', '17': true},
    {'1': 'state', '3': 8, '4': 1, '5': 14, '6': '.cln.HtlcState', '10': 'state'},
  ],
  '4': [ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection$json],
  '8': [
    {'1': '_local_trimmed'},
    {'1': '_status'},
  ],
};

@$core.Deprecated('Use listpeerchannelsChannelsHtlcsDescriptor instead')
const ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection$json = {
  '1': 'ListpeerchannelsChannelsHtlcsDirection',
  '2': [
    {'1': 'IN', '2': 0},
    {'1': 'OUT', '2': 1},
  ],
};

/// Descriptor for `ListpeerchannelsChannelsHtlcs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpeerchannelsChannelsHtlcsDescriptor = $convert.base64Decode(
    'Ch1MaXN0cGVlcmNoYW5uZWxzQ2hhbm5lbHNIdGxjcxJnCglkaXJlY3Rpb24YASABKA4ySS5jbG'
    '4uTGlzdHBlZXJjaGFubmVsc0NoYW5uZWxzSHRsY3MuTGlzdHBlZXJjaGFubmVsc0NoYW5uZWxz'
    'SHRsY3NEaXJlY3Rpb25SCWRpcmVjdGlvbhIOCgJpZBgCIAEoBFICaWQSLAoLYW1vdW50X21zYX'
    'QYAyABKAsyCy5jbG4uQW1vdW50UgphbW91bnRNc2F0EhYKBmV4cGlyeRgEIAEoDVIGZXhwaXJ5'
    'EiEKDHBheW1lbnRfaGFzaBgFIAEoDFILcGF5bWVudEhhc2gSKAoNbG9jYWxfdHJpbW1lZBgGIA'
    'EoCEgAUgxsb2NhbFRyaW1tZWSIAQESGwoGc3RhdHVzGAcgASgJSAFSBnN0YXR1c4gBARIkCgVz'
    'dGF0ZRgIIAEoDjIOLmNsbi5IdGxjU3RhdGVSBXN0YXRlIjkKJkxpc3RwZWVyY2hhbm5lbHNDaG'
    'FubmVsc0h0bGNzRGlyZWN0aW9uEgYKAklOEAASBwoDT1VUEAFCEAoOX2xvY2FsX3RyaW1tZWRC'
    'CQoHX3N0YXR1cw==');

@$core.Deprecated('Use listclosedchannelsRequestDescriptor instead')
const ListclosedchannelsRequest$json = {
  '1': 'ListclosedchannelsRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'id', '17': true},
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `ListclosedchannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listclosedchannelsRequestDescriptor = $convert.base64Decode(
    'ChlMaXN0Y2xvc2VkY2hhbm5lbHNSZXF1ZXN0EhMKAmlkGAEgASgMSABSAmlkiAEBQgUKA19pZA'
    '==');

@$core.Deprecated('Use listclosedchannelsResponseDescriptor instead')
const ListclosedchannelsResponse$json = {
  '1': 'ListclosedchannelsResponse',
  '2': [
    {'1': 'closedchannels', '3': 1, '4': 3, '5': 11, '6': '.cln.ListclosedchannelsClosedchannels', '10': 'closedchannels'},
  ],
};

/// Descriptor for `ListclosedchannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listclosedchannelsResponseDescriptor = $convert.base64Decode(
    'ChpMaXN0Y2xvc2VkY2hhbm5lbHNSZXNwb25zZRJNCg5jbG9zZWRjaGFubmVscxgBIAMoCzIlLm'
    'Nsbi5MaXN0Y2xvc2VkY2hhbm5lbHNDbG9zZWRjaGFubmVsc1IOY2xvc2VkY2hhbm5lbHM=');

@$core.Deprecated('Use listclosedchannelsClosedchannelsDescriptor instead')
const ListclosedchannelsClosedchannels$json = {
  '1': 'ListclosedchannelsClosedchannels',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'peerId', '17': true},
    {'1': 'channel_id', '3': 2, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'short_channel_id', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'shortChannelId', '17': true},
    {'1': 'alias', '3': 4, '4': 1, '5': 11, '6': '.cln.ListclosedchannelsClosedchannelsAlias', '9': 2, '10': 'alias', '17': true},
    {'1': 'opener', '3': 5, '4': 1, '5': 14, '6': '.cln.ChannelSide', '10': 'opener'},
    {'1': 'closer', '3': 6, '4': 1, '5': 14, '6': '.cln.ChannelSide', '9': 3, '10': 'closer', '17': true},
    {'1': 'private', '3': 7, '4': 1, '5': 8, '10': 'private'},
    {'1': 'total_local_commitments', '3': 9, '4': 1, '5': 4, '10': 'totalLocalCommitments'},
    {'1': 'total_remote_commitments', '3': 10, '4': 1, '5': 4, '10': 'totalRemoteCommitments'},
    {'1': 'total_htlcs_sent', '3': 11, '4': 1, '5': 4, '10': 'totalHtlcsSent'},
    {'1': 'funding_txid', '3': 12, '4': 1, '5': 12, '10': 'fundingTxid'},
    {'1': 'funding_outnum', '3': 13, '4': 1, '5': 13, '10': 'fundingOutnum'},
    {'1': 'leased', '3': 14, '4': 1, '5': 8, '10': 'leased'},
    {'1': 'funding_fee_paid_msat', '3': 15, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'fundingFeePaidMsat', '17': true},
    {'1': 'funding_fee_rcvd_msat', '3': 16, '4': 1, '5': 11, '6': '.cln.Amount', '9': 5, '10': 'fundingFeeRcvdMsat', '17': true},
    {'1': 'funding_pushed_msat', '3': 17, '4': 1, '5': 11, '6': '.cln.Amount', '9': 6, '10': 'fundingPushedMsat', '17': true},
    {'1': 'total_msat', '3': 18, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'totalMsat'},
    {'1': 'final_to_us_msat', '3': 19, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'finalToUsMsat'},
    {'1': 'min_to_us_msat', '3': 20, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'minToUsMsat'},
    {'1': 'max_to_us_msat', '3': 21, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'maxToUsMsat'},
    {'1': 'last_commitment_txid', '3': 22, '4': 1, '5': 12, '9': 7, '10': 'lastCommitmentTxid', '17': true},
    {'1': 'last_commitment_fee_msat', '3': 23, '4': 1, '5': 11, '6': '.cln.Amount', '9': 8, '10': 'lastCommitmentFeeMsat', '17': true},
    {'1': 'close_cause', '3': 24, '4': 1, '5': 14, '6': '.cln.ListclosedchannelsClosedchannels.ListclosedchannelsClosedchannelsClose_cause', '10': 'closeCause'},
    {'1': 'last_stable_connection', '3': 25, '4': 1, '5': 4, '9': 9, '10': 'lastStableConnection', '17': true},
  ],
  '4': [ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause$json],
  '8': [
    {'1': '_peer_id'},
    {'1': '_short_channel_id'},
    {'1': '_alias'},
    {'1': '_closer'},
    {'1': '_funding_fee_paid_msat'},
    {'1': '_funding_fee_rcvd_msat'},
    {'1': '_funding_pushed_msat'},
    {'1': '_last_commitment_txid'},
    {'1': '_last_commitment_fee_msat'},
    {'1': '_last_stable_connection'},
  ],
};

@$core.Deprecated('Use listclosedchannelsClosedchannelsDescriptor instead')
const ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause$json = {
  '1': 'ListclosedchannelsClosedchannelsClose_cause',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'LOCAL', '2': 1},
    {'1': 'USER', '2': 2},
    {'1': 'REMOTE', '2': 3},
    {'1': 'PROTOCOL', '2': 4},
    {'1': 'ONCHAIN', '2': 5},
  ],
};

/// Descriptor for `ListclosedchannelsClosedchannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listclosedchannelsClosedchannelsDescriptor = $convert.base64Decode(
    'CiBMaXN0Y2xvc2VkY2hhbm5lbHNDbG9zZWRjaGFubmVscxIcCgdwZWVyX2lkGAEgASgMSABSBn'
    'BlZXJJZIgBARIdCgpjaGFubmVsX2lkGAIgASgMUgljaGFubmVsSWQSLQoQc2hvcnRfY2hhbm5l'
    'bF9pZBgDIAEoCUgBUg5zaG9ydENoYW5uZWxJZIgBARJFCgVhbGlhcxgEIAEoCzIqLmNsbi5MaX'
    'N0Y2xvc2VkY2hhbm5lbHNDbG9zZWRjaGFubmVsc0FsaWFzSAJSBWFsaWFziAEBEigKBm9wZW5l'
    'chgFIAEoDjIQLmNsbi5DaGFubmVsU2lkZVIGb3BlbmVyEi0KBmNsb3NlchgGIAEoDjIQLmNsbi'
    '5DaGFubmVsU2lkZUgDUgZjbG9zZXKIAQESGAoHcHJpdmF0ZRgHIAEoCFIHcHJpdmF0ZRI2Chd0'
    'b3RhbF9sb2NhbF9jb21taXRtZW50cxgJIAEoBFIVdG90YWxMb2NhbENvbW1pdG1lbnRzEjgKGH'
    'RvdGFsX3JlbW90ZV9jb21taXRtZW50cxgKIAEoBFIWdG90YWxSZW1vdGVDb21taXRtZW50cxIo'
    'ChB0b3RhbF9odGxjc19zZW50GAsgASgEUg50b3RhbEh0bGNzU2VudBIhCgxmdW5kaW5nX3R4aW'
    'QYDCABKAxSC2Z1bmRpbmdUeGlkEiUKDmZ1bmRpbmdfb3V0bnVtGA0gASgNUg1mdW5kaW5nT3V0'
    'bnVtEhYKBmxlYXNlZBgOIAEoCFIGbGVhc2VkEkMKFWZ1bmRpbmdfZmVlX3BhaWRfbXNhdBgPIA'
    'EoCzILLmNsbi5BbW91bnRIBFISZnVuZGluZ0ZlZVBhaWRNc2F0iAEBEkMKFWZ1bmRpbmdfZmVl'
    'X3JjdmRfbXNhdBgQIAEoCzILLmNsbi5BbW91bnRIBVISZnVuZGluZ0ZlZVJjdmRNc2F0iAEBEk'
    'AKE2Z1bmRpbmdfcHVzaGVkX21zYXQYESABKAsyCy5jbG4uQW1vdW50SAZSEWZ1bmRpbmdQdXNo'
    'ZWRNc2F0iAEBEioKCnRvdGFsX21zYXQYEiABKAsyCy5jbG4uQW1vdW50Ugl0b3RhbE1zYXQSNA'
    'oQZmluYWxfdG9fdXNfbXNhdBgTIAEoCzILLmNsbi5BbW91bnRSDWZpbmFsVG9Vc01zYXQSMAoO'
    'bWluX3RvX3VzX21zYXQYFCABKAsyCy5jbG4uQW1vdW50UgttaW5Ub1VzTXNhdBIwCg5tYXhfdG'
    '9fdXNfbXNhdBgVIAEoCzILLmNsbi5BbW91bnRSC21heFRvVXNNc2F0EjUKFGxhc3RfY29tbWl0'
    'bWVudF90eGlkGBYgASgMSAdSEmxhc3RDb21taXRtZW50VHhpZIgBARJJChhsYXN0X2NvbW1pdG'
    '1lbnRfZmVlX21zYXQYFyABKAsyCy5jbG4uQW1vdW50SAhSFWxhc3RDb21taXRtZW50RmVlTXNh'
    'dIgBARJyCgtjbG9zZV9jYXVzZRgYIAEoDjJRLmNsbi5MaXN0Y2xvc2VkY2hhbm5lbHNDbG9zZW'
    'RjaGFubmVscy5MaXN0Y2xvc2VkY2hhbm5lbHNDbG9zZWRjaGFubmVsc0Nsb3NlX2NhdXNlUgpj'
    'bG9zZUNhdXNlEjkKFmxhc3Rfc3RhYmxlX2Nvbm5lY3Rpb24YGSABKARICVIUbGFzdFN0YWJsZU'
    'Nvbm5lY3Rpb26IAQEidgorTGlzdGNsb3NlZGNoYW5uZWxzQ2xvc2VkY2hhbm5lbHNDbG9zZV9j'
    'YXVzZRILCgdVTktOT1dOEAASCQoFTE9DQUwQARIICgRVU0VSEAISCgoGUkVNT1RFEAMSDAoIUF'
    'JPVE9DT0wQBBILCgdPTkNIQUlOEAVCCgoIX3BlZXJfaWRCEwoRX3Nob3J0X2NoYW5uZWxfaWRC'
    'CAoGX2FsaWFzQgkKB19jbG9zZXJCGAoWX2Z1bmRpbmdfZmVlX3BhaWRfbXNhdEIYChZfZnVuZG'
    'luZ19mZWVfcmN2ZF9tc2F0QhYKFF9mdW5kaW5nX3B1c2hlZF9tc2F0QhcKFV9sYXN0X2NvbW1p'
    'dG1lbnRfdHhpZEIbChlfbGFzdF9jb21taXRtZW50X2ZlZV9tc2F0QhkKF19sYXN0X3N0YWJsZV'
    '9jb25uZWN0aW9u');

@$core.Deprecated('Use listclosedchannelsClosedchannelsAliasDescriptor instead')
const ListclosedchannelsClosedchannelsAlias$json = {
  '1': 'ListclosedchannelsClosedchannelsAlias',
  '2': [
    {'1': 'local', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'local', '17': true},
    {'1': 'remote', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'remote', '17': true},
  ],
  '8': [
    {'1': '_local'},
    {'1': '_remote'},
  ],
};

/// Descriptor for `ListclosedchannelsClosedchannelsAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listclosedchannelsClosedchannelsAliasDescriptor = $convert.base64Decode(
    'CiVMaXN0Y2xvc2VkY2hhbm5lbHNDbG9zZWRjaGFubmVsc0FsaWFzEhkKBWxvY2FsGAEgASgJSA'
    'BSBWxvY2FsiAEBEhsKBnJlbW90ZRgCIAEoCUgBUgZyZW1vdGWIAQFCCAoGX2xvY2FsQgkKB19y'
    'ZW1vdGU=');

@$core.Deprecated('Use decodepayRequestDescriptor instead')
const DecodepayRequest$json = {
  '1': 'DecodepayRequest',
  '2': [
    {'1': 'bolt11', '3': 1, '4': 1, '5': 9, '10': 'bolt11'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `DecodepayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodepayRequestDescriptor = $convert.base64Decode(
    'ChBEZWNvZGVwYXlSZXF1ZXN0EhYKBmJvbHQxMRgBIAEoCVIGYm9sdDExEiUKC2Rlc2NyaXB0aW'
    '9uGAIgASgJSABSC2Rlc2NyaXB0aW9uiAEBQg4KDF9kZXNjcmlwdGlvbg==');

@$core.Deprecated('Use decodepayResponseDescriptor instead')
const DecodepayResponse$json = {
  '1': 'DecodepayResponse',
  '2': [
    {'1': 'currency', '3': 1, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'created_at', '3': 2, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'expiry', '3': 3, '4': 1, '5': 4, '10': 'expiry'},
    {'1': 'payee', '3': 4, '4': 1, '5': 12, '10': 'payee'},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'payment_hash', '3': 6, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'signature', '3': 7, '4': 1, '5': 9, '10': 'signature'},
    {'1': 'description', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'description_hash', '3': 9, '4': 1, '5': 12, '9': 2, '10': 'descriptionHash', '17': true},
    {'1': 'min_final_cltv_expiry', '3': 10, '4': 1, '5': 13, '10': 'minFinalCltvExpiry'},
    {'1': 'payment_secret', '3': 11, '4': 1, '5': 12, '9': 3, '10': 'paymentSecret', '17': true},
    {'1': 'features', '3': 12, '4': 1, '5': 12, '9': 4, '10': 'features', '17': true},
    {'1': 'payment_metadata', '3': 13, '4': 1, '5': 12, '9': 5, '10': 'paymentMetadata', '17': true},
    {'1': 'fallbacks', '3': 14, '4': 3, '5': 11, '6': '.cln.DecodepayFallbacks', '10': 'fallbacks'},
    {'1': 'extra', '3': 16, '4': 3, '5': 11, '6': '.cln.DecodepayExtra', '10': 'extra'},
    {'1': 'routes', '3': 17, '4': 1, '5': 11, '6': '.cln.DecodeRoutehintList', '9': 6, '10': 'routes', '17': true},
  ],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_description'},
    {'1': '_description_hash'},
    {'1': '_payment_secret'},
    {'1': '_features'},
    {'1': '_payment_metadata'},
    {'1': '_routes'},
  ],
};

/// Descriptor for `DecodepayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodepayResponseDescriptor = $convert.base64Decode(
    'ChFEZWNvZGVwYXlSZXNwb25zZRIaCghjdXJyZW5jeRgBIAEoCVIIY3VycmVuY3kSHQoKY3JlYX'
    'RlZF9hdBgCIAEoBFIJY3JlYXRlZEF0EhYKBmV4cGlyeRgDIAEoBFIGZXhwaXJ5EhQKBXBheWVl'
    'GAQgASgMUgVwYXllZRIxCgthbW91bnRfbXNhdBgFIAEoCzILLmNsbi5BbW91bnRIAFIKYW1vdW'
    '50TXNhdIgBARIhCgxwYXltZW50X2hhc2gYBiABKAxSC3BheW1lbnRIYXNoEhwKCXNpZ25hdHVy'
    'ZRgHIAEoCVIJc2lnbmF0dXJlEiUKC2Rlc2NyaXB0aW9uGAggASgJSAFSC2Rlc2NyaXB0aW9uiA'
    'EBEi4KEGRlc2NyaXB0aW9uX2hhc2gYCSABKAxIAlIPZGVzY3JpcHRpb25IYXNoiAEBEjEKFW1p'
    'bl9maW5hbF9jbHR2X2V4cGlyeRgKIAEoDVISbWluRmluYWxDbHR2RXhwaXJ5EioKDnBheW1lbn'
    'Rfc2VjcmV0GAsgASgMSANSDXBheW1lbnRTZWNyZXSIAQESHwoIZmVhdHVyZXMYDCABKAxIBFII'
    'ZmVhdHVyZXOIAQESLgoQcGF5bWVudF9tZXRhZGF0YRgNIAEoDEgFUg9wYXltZW50TWV0YWRhdG'
    'GIAQESNQoJZmFsbGJhY2tzGA4gAygLMhcuY2xuLkRlY29kZXBheUZhbGxiYWNrc1IJZmFsbGJh'
    'Y2tzEikKBWV4dHJhGBAgAygLMhMuY2xuLkRlY29kZXBheUV4dHJhUgVleHRyYRI1CgZyb3V0ZX'
    'MYESABKAsyGC5jbG4uRGVjb2RlUm91dGVoaW50TGlzdEgGUgZyb3V0ZXOIAQFCDgoMX2Ftb3Vu'
    'dF9tc2F0Qg4KDF9kZXNjcmlwdGlvbkITChFfZGVzY3JpcHRpb25faGFzaEIRCg9fcGF5bWVudF'
    '9zZWNyZXRCCwoJX2ZlYXR1cmVzQhMKEV9wYXltZW50X21ldGFkYXRhQgkKB19yb3V0ZXM=');

@$core.Deprecated('Use decodepayFallbacksDescriptor instead')
const DecodepayFallbacks$json = {
  '1': 'DecodepayFallbacks',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.DecodepayFallbacks.DecodepayFallbacksType', '10': 'itemType'},
    {'1': 'addr', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'addr', '17': true},
    {'1': 'hex', '3': 3, '4': 1, '5': 12, '10': 'hex'},
  ],
  '4': [DecodepayFallbacks_DecodepayFallbacksType$json],
  '8': [
    {'1': '_addr'},
  ],
};

@$core.Deprecated('Use decodepayFallbacksDescriptor instead')
const DecodepayFallbacks_DecodepayFallbacksType$json = {
  '1': 'DecodepayFallbacksType',
  '2': [
    {'1': 'P2PKH', '2': 0},
    {'1': 'P2SH', '2': 1},
    {'1': 'P2WPKH', '2': 2},
    {'1': 'P2WSH', '2': 3},
    {'1': 'P2TR', '2': 4},
  ],
};

/// Descriptor for `DecodepayFallbacks`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodepayFallbacksDescriptor = $convert.base64Decode(
    'ChJEZWNvZGVwYXlGYWxsYmFja3MSSwoJaXRlbV90eXBlGAEgASgOMi4uY2xuLkRlY29kZXBheU'
    'ZhbGxiYWNrcy5EZWNvZGVwYXlGYWxsYmFja3NUeXBlUghpdGVtVHlwZRIXCgRhZGRyGAIgASgJ'
    'SABSBGFkZHKIAQESEAoDaGV4GAMgASgMUgNoZXgiTgoWRGVjb2RlcGF5RmFsbGJhY2tzVHlwZR'
    'IJCgVQMlBLSBAAEggKBFAyU0gQARIKCgZQMldQS0gQAhIJCgVQMldTSBADEggKBFAyVFIQBEIH'
    'CgVfYWRkcg==');

@$core.Deprecated('Use decodepayExtraDescriptor instead')
const DecodepayExtra$json = {
  '1': 'DecodepayExtra',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `DecodepayExtra`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodepayExtraDescriptor = $convert.base64Decode(
    'Cg5EZWNvZGVwYXlFeHRyYRIQCgN0YWcYASABKAlSA3RhZxISCgRkYXRhGAIgASgJUgRkYXRh');

@$core.Deprecated('Use decodeRequestDescriptor instead')
const DecodeRequest$json = {
  '1': 'DecodeRequest',
  '2': [
    {'1': 'string', '3': 1, '4': 1, '5': 9, '10': 'string'},
  ],
};

/// Descriptor for `DecodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeRequestDescriptor = $convert.base64Decode(
    'Cg1EZWNvZGVSZXF1ZXN0EhYKBnN0cmluZxgBIAEoCVIGc3RyaW5n');

@$core.Deprecated('Use decodeResponseDescriptor instead')
const DecodeResponse$json = {
  '1': 'DecodeResponse',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.DecodeResponse.DecodeType', '10': 'itemType'},
    {'1': 'valid', '3': 2, '4': 1, '5': 8, '10': 'valid'},
    {'1': 'offer_id', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'offerId', '17': true},
    {'1': 'offer_chains', '3': 4, '4': 3, '5': 12, '10': 'offerChains'},
    {'1': 'offer_metadata', '3': 5, '4': 1, '5': 12, '9': 1, '10': 'offerMetadata', '17': true},
    {'1': 'offer_currency', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'offerCurrency', '17': true},
    {'1': 'warning_unknown_offer_currency', '3': 7, '4': 1, '5': 9, '9': 3, '10': 'warningUnknownOfferCurrency', '17': true},
    {'1': 'currency_minor_unit', '3': 8, '4': 1, '5': 13, '9': 4, '10': 'currencyMinorUnit', '17': true},
    {'1': 'offer_amount', '3': 9, '4': 1, '5': 4, '9': 5, '10': 'offerAmount', '17': true},
    {'1': 'offer_amount_msat', '3': 10, '4': 1, '5': 11, '6': '.cln.Amount', '9': 6, '10': 'offerAmountMsat', '17': true},
    {'1': 'offer_description', '3': 11, '4': 1, '5': 9, '9': 7, '10': 'offerDescription', '17': true},
    {'1': 'offer_issuer', '3': 12, '4': 1, '5': 9, '9': 8, '10': 'offerIssuer', '17': true},
    {'1': 'offer_features', '3': 13, '4': 1, '5': 12, '9': 9, '10': 'offerFeatures', '17': true},
    {'1': 'offer_absolute_expiry', '3': 14, '4': 1, '5': 4, '9': 10, '10': 'offerAbsoluteExpiry', '17': true},
    {'1': 'offer_quantity_max', '3': 15, '4': 1, '5': 4, '9': 11, '10': 'offerQuantityMax', '17': true},
    {'1': 'offer_paths', '3': 16, '4': 3, '5': 11, '6': '.cln.DecodeOffer_paths', '10': 'offerPaths'},
    {'1': 'offer_node_id', '3': 17, '4': 1, '5': 12, '9': 12, '10': 'offerNodeId', '17': true},
    {'1': 'warning_missing_offer_node_id', '3': 20, '4': 1, '5': 9, '9': 13, '10': 'warningMissingOfferNodeId', '17': true},
    {'1': 'warning_invalid_offer_description', '3': 21, '4': 1, '5': 9, '9': 14, '10': 'warningInvalidOfferDescription', '17': true},
    {'1': 'warning_missing_offer_description', '3': 22, '4': 1, '5': 9, '9': 15, '10': 'warningMissingOfferDescription', '17': true},
    {'1': 'warning_invalid_offer_currency', '3': 23, '4': 1, '5': 9, '9': 16, '10': 'warningInvalidOfferCurrency', '17': true},
    {'1': 'warning_invalid_offer_issuer', '3': 24, '4': 1, '5': 9, '9': 17, '10': 'warningInvalidOfferIssuer', '17': true},
    {'1': 'invreq_metadata', '3': 25, '4': 1, '5': 12, '9': 18, '10': 'invreqMetadata', '17': true},
    {'1': 'invreq_payer_id', '3': 26, '4': 1, '5': 12, '9': 19, '10': 'invreqPayerId', '17': true},
    {'1': 'invreq_chain', '3': 27, '4': 1, '5': 12, '9': 20, '10': 'invreqChain', '17': true},
    {'1': 'invreq_amount_msat', '3': 28, '4': 1, '5': 11, '6': '.cln.Amount', '9': 21, '10': 'invreqAmountMsat', '17': true},
    {'1': 'invreq_features', '3': 29, '4': 1, '5': 12, '9': 22, '10': 'invreqFeatures', '17': true},
    {'1': 'invreq_quantity', '3': 30, '4': 1, '5': 4, '9': 23, '10': 'invreqQuantity', '17': true},
    {'1': 'invreq_payer_note', '3': 31, '4': 1, '5': 9, '9': 24, '10': 'invreqPayerNote', '17': true},
    {'1': 'invreq_recurrence_counter', '3': 32, '4': 1, '5': 13, '9': 25, '10': 'invreqRecurrenceCounter', '17': true},
    {'1': 'invreq_recurrence_start', '3': 33, '4': 1, '5': 13, '9': 26, '10': 'invreqRecurrenceStart', '17': true},
    {'1': 'warning_missing_invreq_metadata', '3': 35, '4': 1, '5': 9, '9': 27, '10': 'warningMissingInvreqMetadata', '17': true},
    {'1': 'warning_missing_invreq_payer_id', '3': 36, '4': 1, '5': 9, '9': 28, '10': 'warningMissingInvreqPayerId', '17': true},
    {'1': 'warning_invalid_invreq_payer_note', '3': 37, '4': 1, '5': 9, '9': 29, '10': 'warningInvalidInvreqPayerNote', '17': true},
    {'1': 'warning_missing_invoice_request_signature', '3': 38, '4': 1, '5': 9, '9': 30, '10': 'warningMissingInvoiceRequestSignature', '17': true},
    {'1': 'warning_invalid_invoice_request_signature', '3': 39, '4': 1, '5': 9, '9': 31, '10': 'warningInvalidInvoiceRequestSignature', '17': true},
    {'1': 'invoice_created_at', '3': 41, '4': 1, '5': 4, '9': 32, '10': 'invoiceCreatedAt', '17': true},
    {'1': 'invoice_relative_expiry', '3': 42, '4': 1, '5': 13, '9': 33, '10': 'invoiceRelativeExpiry', '17': true},
    {'1': 'invoice_payment_hash', '3': 43, '4': 1, '5': 12, '9': 34, '10': 'invoicePaymentHash', '17': true},
    {'1': 'invoice_amount_msat', '3': 44, '4': 1, '5': 11, '6': '.cln.Amount', '9': 35, '10': 'invoiceAmountMsat', '17': true},
    {'1': 'invoice_fallbacks', '3': 45, '4': 3, '5': 11, '6': '.cln.DecodeInvoice_fallbacks', '10': 'invoiceFallbacks'},
    {'1': 'invoice_features', '3': 46, '4': 1, '5': 12, '9': 36, '10': 'invoiceFeatures', '17': true},
    {'1': 'invoice_node_id', '3': 47, '4': 1, '5': 12, '9': 37, '10': 'invoiceNodeId', '17': true},
    {'1': 'invoice_recurrence_basetime', '3': 48, '4': 1, '5': 4, '9': 38, '10': 'invoiceRecurrenceBasetime', '17': true},
    {'1': 'warning_missing_invoice_paths', '3': 50, '4': 1, '5': 9, '9': 39, '10': 'warningMissingInvoicePaths', '17': true},
    {'1': 'warning_missing_invoice_blindedpay', '3': 51, '4': 1, '5': 9, '9': 40, '10': 'warningMissingInvoiceBlindedpay', '17': true},
    {'1': 'warning_missing_invoice_created_at', '3': 52, '4': 1, '5': 9, '9': 41, '10': 'warningMissingInvoiceCreatedAt', '17': true},
    {'1': 'warning_missing_invoice_payment_hash', '3': 53, '4': 1, '5': 9, '9': 42, '10': 'warningMissingInvoicePaymentHash', '17': true},
    {'1': 'warning_missing_invoice_amount', '3': 54, '4': 1, '5': 9, '9': 43, '10': 'warningMissingInvoiceAmount', '17': true},
    {'1': 'warning_missing_invoice_recurrence_basetime', '3': 55, '4': 1, '5': 9, '9': 44, '10': 'warningMissingInvoiceRecurrenceBasetime', '17': true},
    {'1': 'warning_missing_invoice_node_id', '3': 56, '4': 1, '5': 9, '9': 45, '10': 'warningMissingInvoiceNodeId', '17': true},
    {'1': 'warning_missing_invoice_signature', '3': 57, '4': 1, '5': 9, '9': 46, '10': 'warningMissingInvoiceSignature', '17': true},
    {'1': 'warning_invalid_invoice_signature', '3': 58, '4': 1, '5': 9, '9': 47, '10': 'warningInvalidInvoiceSignature', '17': true},
    {'1': 'fallbacks', '3': 59, '4': 3, '5': 11, '6': '.cln.DecodeFallbacks', '10': 'fallbacks'},
    {'1': 'created_at', '3': 60, '4': 1, '5': 4, '9': 48, '10': 'createdAt', '17': true},
    {'1': 'expiry', '3': 61, '4': 1, '5': 4, '9': 49, '10': 'expiry', '17': true},
    {'1': 'payee', '3': 62, '4': 1, '5': 12, '9': 50, '10': 'payee', '17': true},
    {'1': 'payment_hash', '3': 63, '4': 1, '5': 12, '9': 51, '10': 'paymentHash', '17': true},
    {'1': 'description_hash', '3': 64, '4': 1, '5': 12, '9': 52, '10': 'descriptionHash', '17': true},
    {'1': 'min_final_cltv_expiry', '3': 65, '4': 1, '5': 13, '9': 53, '10': 'minFinalCltvExpiry', '17': true},
    {'1': 'payment_secret', '3': 66, '4': 1, '5': 12, '9': 54, '10': 'paymentSecret', '17': true},
    {'1': 'payment_metadata', '3': 67, '4': 1, '5': 12, '9': 55, '10': 'paymentMetadata', '17': true},
    {'1': 'extra', '3': 69, '4': 3, '5': 11, '6': '.cln.DecodeExtra', '10': 'extra'},
    {'1': 'unique_id', '3': 70, '4': 1, '5': 9, '9': 56, '10': 'uniqueId', '17': true},
    {'1': 'version', '3': 71, '4': 1, '5': 9, '9': 57, '10': 'version', '17': true},
    {'1': 'string', '3': 72, '4': 1, '5': 9, '9': 58, '10': 'string', '17': true},
    {'1': 'restrictions', '3': 73, '4': 3, '5': 11, '6': '.cln.DecodeRestrictions', '10': 'restrictions'},
    {'1': 'warning_rune_invalid_utf8', '3': 74, '4': 1, '5': 9, '9': 59, '10': 'warningRuneInvalidUtf8', '17': true},
    {'1': 'hex', '3': 75, '4': 1, '5': 12, '9': 60, '10': 'hex', '17': true},
    {'1': 'decrypted', '3': 76, '4': 1, '5': 12, '9': 61, '10': 'decrypted', '17': true},
    {'1': 'signature', '3': 77, '4': 1, '5': 9, '9': 62, '10': 'signature', '17': true},
    {'1': 'currency', '3': 78, '4': 1, '5': 9, '9': 63, '10': 'currency', '17': true},
    {'1': 'amount_msat', '3': 79, '4': 1, '5': 11, '6': '.cln.Amount', '9': 64, '10': 'amountMsat', '17': true},
    {'1': 'description', '3': 80, '4': 1, '5': 9, '9': 65, '10': 'description', '17': true},
    {'1': 'features', '3': 81, '4': 1, '5': 12, '9': 66, '10': 'features', '17': true},
    {'1': 'routes', '3': 82, '4': 1, '5': 11, '6': '.cln.DecodeRoutehintList', '9': 67, '10': 'routes', '17': true},
    {'1': 'offer_issuer_id', '3': 83, '4': 1, '5': 12, '9': 68, '10': 'offerIssuerId', '17': true},
    {'1': 'warning_missing_offer_issuer_id', '3': 84, '4': 1, '5': 9, '9': 69, '10': 'warningMissingOfferIssuerId', '17': true},
    {'1': 'invreq_paths', '3': 85, '4': 3, '5': 11, '6': '.cln.DecodeInvreq_paths', '10': 'invreqPaths'},
    {'1': 'warning_empty_blinded_path', '3': 86, '4': 1, '5': 9, '9': 70, '10': 'warningEmptyBlindedPath', '17': true},
  ],
  '4': [DecodeResponse_DecodeType$json],
  '8': [
    {'1': '_offer_id'},
    {'1': '_offer_metadata'},
    {'1': '_offer_currency'},
    {'1': '_warning_unknown_offer_currency'},
    {'1': '_currency_minor_unit'},
    {'1': '_offer_amount'},
    {'1': '_offer_amount_msat'},
    {'1': '_offer_description'},
    {'1': '_offer_issuer'},
    {'1': '_offer_features'},
    {'1': '_offer_absolute_expiry'},
    {'1': '_offer_quantity_max'},
    {'1': '_offer_node_id'},
    {'1': '_warning_missing_offer_node_id'},
    {'1': '_warning_invalid_offer_description'},
    {'1': '_warning_missing_offer_description'},
    {'1': '_warning_invalid_offer_currency'},
    {'1': '_warning_invalid_offer_issuer'},
    {'1': '_invreq_metadata'},
    {'1': '_invreq_payer_id'},
    {'1': '_invreq_chain'},
    {'1': '_invreq_amount_msat'},
    {'1': '_invreq_features'},
    {'1': '_invreq_quantity'},
    {'1': '_invreq_payer_note'},
    {'1': '_invreq_recurrence_counter'},
    {'1': '_invreq_recurrence_start'},
    {'1': '_warning_missing_invreq_metadata'},
    {'1': '_warning_missing_invreq_payer_id'},
    {'1': '_warning_invalid_invreq_payer_note'},
    {'1': '_warning_missing_invoice_request_signature'},
    {'1': '_warning_invalid_invoice_request_signature'},
    {'1': '_invoice_created_at'},
    {'1': '_invoice_relative_expiry'},
    {'1': '_invoice_payment_hash'},
    {'1': '_invoice_amount_msat'},
    {'1': '_invoice_features'},
    {'1': '_invoice_node_id'},
    {'1': '_invoice_recurrence_basetime'},
    {'1': '_warning_missing_invoice_paths'},
    {'1': '_warning_missing_invoice_blindedpay'},
    {'1': '_warning_missing_invoice_created_at'},
    {'1': '_warning_missing_invoice_payment_hash'},
    {'1': '_warning_missing_invoice_amount'},
    {'1': '_warning_missing_invoice_recurrence_basetime'},
    {'1': '_warning_missing_invoice_node_id'},
    {'1': '_warning_missing_invoice_signature'},
    {'1': '_warning_invalid_invoice_signature'},
    {'1': '_created_at'},
    {'1': '_expiry'},
    {'1': '_payee'},
    {'1': '_payment_hash'},
    {'1': '_description_hash'},
    {'1': '_min_final_cltv_expiry'},
    {'1': '_payment_secret'},
    {'1': '_payment_metadata'},
    {'1': '_unique_id'},
    {'1': '_version'},
    {'1': '_string'},
    {'1': '_warning_rune_invalid_utf8'},
    {'1': '_hex'},
    {'1': '_decrypted'},
    {'1': '_signature'},
    {'1': '_currency'},
    {'1': '_amount_msat'},
    {'1': '_description'},
    {'1': '_features'},
    {'1': '_routes'},
    {'1': '_offer_issuer_id'},
    {'1': '_warning_missing_offer_issuer_id'},
    {'1': '_warning_empty_blinded_path'},
  ],
};

@$core.Deprecated('Use decodeResponseDescriptor instead')
const DecodeResponse_DecodeType$json = {
  '1': 'DecodeType',
  '2': [
    {'1': 'BOLT12_OFFER', '2': 0},
    {'1': 'BOLT12_INVOICE', '2': 1},
    {'1': 'BOLT12_INVOICE_REQUEST', '2': 2},
    {'1': 'BOLT11_INVOICE', '2': 3},
    {'1': 'RUNE', '2': 4},
    {'1': 'EMERGENCY_RECOVER', '2': 5},
  ],
};

/// Descriptor for `DecodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeResponseDescriptor = $convert.base64Decode(
    'Cg5EZWNvZGVSZXNwb25zZRI7CglpdGVtX3R5cGUYASABKA4yHi5jbG4uRGVjb2RlUmVzcG9uc2'
    'UuRGVjb2RlVHlwZVIIaXRlbVR5cGUSFAoFdmFsaWQYAiABKAhSBXZhbGlkEh4KCG9mZmVyX2lk'
    'GAMgASgMSABSB29mZmVySWSIAQESIQoMb2ZmZXJfY2hhaW5zGAQgAygMUgtvZmZlckNoYWlucx'
    'IqCg5vZmZlcl9tZXRhZGF0YRgFIAEoDEgBUg1vZmZlck1ldGFkYXRhiAEBEioKDm9mZmVyX2N1'
    'cnJlbmN5GAYgASgJSAJSDW9mZmVyQ3VycmVuY3mIAQESSAoed2FybmluZ191bmtub3duX29mZm'
    'VyX2N1cnJlbmN5GAcgASgJSANSG3dhcm5pbmdVbmtub3duT2ZmZXJDdXJyZW5jeYgBARIzChNj'
    'dXJyZW5jeV9taW5vcl91bml0GAggASgNSARSEWN1cnJlbmN5TWlub3JVbml0iAEBEiYKDG9mZm'
    'VyX2Ftb3VudBgJIAEoBEgFUgtvZmZlckFtb3VudIgBARI8ChFvZmZlcl9hbW91bnRfbXNhdBgK'
    'IAEoCzILLmNsbi5BbW91bnRIBlIPb2ZmZXJBbW91bnRNc2F0iAEBEjAKEW9mZmVyX2Rlc2NyaX'
    'B0aW9uGAsgASgJSAdSEG9mZmVyRGVzY3JpcHRpb26IAQESJgoMb2ZmZXJfaXNzdWVyGAwgASgJ'
    'SAhSC29mZmVySXNzdWVyiAEBEioKDm9mZmVyX2ZlYXR1cmVzGA0gASgMSAlSDW9mZmVyRmVhdH'
    'VyZXOIAQESNwoVb2ZmZXJfYWJzb2x1dGVfZXhwaXJ5GA4gASgESApSE29mZmVyQWJzb2x1dGVF'
    'eHBpcnmIAQESMQoSb2ZmZXJfcXVhbnRpdHlfbWF4GA8gASgESAtSEG9mZmVyUXVhbnRpdHlNYX'
    'iIAQESNwoLb2ZmZXJfcGF0aHMYECADKAsyFi5jbG4uRGVjb2RlT2ZmZXJfcGF0aHNSCm9mZmVy'
    'UGF0aHMSJwoNb2ZmZXJfbm9kZV9pZBgRIAEoDEgMUgtvZmZlck5vZGVJZIgBARJFCh13YXJuaW'
    '5nX21pc3Npbmdfb2ZmZXJfbm9kZV9pZBgUIAEoCUgNUhl3YXJuaW5nTWlzc2luZ09mZmVyTm9k'
    'ZUlkiAEBEk4KIXdhcm5pbmdfaW52YWxpZF9vZmZlcl9kZXNjcmlwdGlvbhgVIAEoCUgOUh53YX'
    'JuaW5nSW52YWxpZE9mZmVyRGVzY3JpcHRpb26IAQESTgohd2FybmluZ19taXNzaW5nX29mZmVy'
    'X2Rlc2NyaXB0aW9uGBYgASgJSA9SHndhcm5pbmdNaXNzaW5nT2ZmZXJEZXNjcmlwdGlvbogBAR'
    'JICh53YXJuaW5nX2ludmFsaWRfb2ZmZXJfY3VycmVuY3kYFyABKAlIEFIbd2FybmluZ0ludmFs'
    'aWRPZmZlckN1cnJlbmN5iAEBEkQKHHdhcm5pbmdfaW52YWxpZF9vZmZlcl9pc3N1ZXIYGCABKA'
    'lIEVIZd2FybmluZ0ludmFsaWRPZmZlcklzc3VlcogBARIsCg9pbnZyZXFfbWV0YWRhdGEYGSAB'
    'KAxIElIOaW52cmVxTWV0YWRhdGGIAQESKwoPaW52cmVxX3BheWVyX2lkGBogASgMSBNSDWludn'
    'JlcVBheWVySWSIAQESJgoMaW52cmVxX2NoYWluGBsgASgMSBRSC2ludnJlcUNoYWluiAEBEj4K'
    'EmludnJlcV9hbW91bnRfbXNhdBgcIAEoCzILLmNsbi5BbW91bnRIFVIQaW52cmVxQW1vdW50TX'
    'NhdIgBARIsCg9pbnZyZXFfZmVhdHVyZXMYHSABKAxIFlIOaW52cmVxRmVhdHVyZXOIAQESLAoP'
    'aW52cmVxX3F1YW50aXR5GB4gASgESBdSDmludnJlcVF1YW50aXR5iAEBEi8KEWludnJlcV9wYX'
    'llcl9ub3RlGB8gASgJSBhSD2ludnJlcVBheWVyTm90ZYgBARI/ChlpbnZyZXFfcmVjdXJyZW5j'
    'ZV9jb3VudGVyGCAgASgNSBlSF2ludnJlcVJlY3VycmVuY2VDb3VudGVyiAEBEjsKF2ludnJlcV'
    '9yZWN1cnJlbmNlX3N0YXJ0GCEgASgNSBpSFWludnJlcVJlY3VycmVuY2VTdGFydIgBARJKCh93'
    'YXJuaW5nX21pc3NpbmdfaW52cmVxX21ldGFkYXRhGCMgASgJSBtSHHdhcm5pbmdNaXNzaW5nSW'
    '52cmVxTWV0YWRhdGGIAQESSQofd2FybmluZ19taXNzaW5nX2ludnJlcV9wYXllcl9pZBgkIAEo'
    'CUgcUht3YXJuaW5nTWlzc2luZ0ludnJlcVBheWVySWSIAQESTQohd2FybmluZ19pbnZhbGlkX2'
    'ludnJlcV9wYXllcl9ub3RlGCUgASgJSB1SHXdhcm5pbmdJbnZhbGlkSW52cmVxUGF5ZXJOb3Rl'
    'iAEBEl0KKXdhcm5pbmdfbWlzc2luZ19pbnZvaWNlX3JlcXVlc3Rfc2lnbmF0dXJlGCYgASgJSB'
    '5SJXdhcm5pbmdNaXNzaW5nSW52b2ljZVJlcXVlc3RTaWduYXR1cmWIAQESXQopd2FybmluZ19p'
    'bnZhbGlkX2ludm9pY2VfcmVxdWVzdF9zaWduYXR1cmUYJyABKAlIH1Ild2FybmluZ0ludmFsaW'
    'RJbnZvaWNlUmVxdWVzdFNpZ25hdHVyZYgBARIxChJpbnZvaWNlX2NyZWF0ZWRfYXQYKSABKARI'
    'IFIQaW52b2ljZUNyZWF0ZWRBdIgBARI7ChdpbnZvaWNlX3JlbGF0aXZlX2V4cGlyeRgqIAEoDU'
    'ghUhVpbnZvaWNlUmVsYXRpdmVFeHBpcnmIAQESNQoUaW52b2ljZV9wYXltZW50X2hhc2gYKyAB'
    'KAxIIlISaW52b2ljZVBheW1lbnRIYXNoiAEBEkAKE2ludm9pY2VfYW1vdW50X21zYXQYLCABKA'
    'syCy5jbG4uQW1vdW50SCNSEWludm9pY2VBbW91bnRNc2F0iAEBEkkKEWludm9pY2VfZmFsbGJh'
    'Y2tzGC0gAygLMhwuY2xuLkRlY29kZUludm9pY2VfZmFsbGJhY2tzUhBpbnZvaWNlRmFsbGJhY2'
    'tzEi4KEGludm9pY2VfZmVhdHVyZXMYLiABKAxIJFIPaW52b2ljZUZlYXR1cmVziAEBEisKD2lu'
    'dm9pY2Vfbm9kZV9pZBgvIAEoDEglUg1pbnZvaWNlTm9kZUlkiAEBEkMKG2ludm9pY2VfcmVjdX'
    'JyZW5jZV9iYXNldGltZRgwIAEoBEgmUhlpbnZvaWNlUmVjdXJyZW5jZUJhc2V0aW1liAEBEkYK'
    'HXdhcm5pbmdfbWlzc2luZ19pbnZvaWNlX3BhdGhzGDIgASgJSCdSGndhcm5pbmdNaXNzaW5nSW'
    '52b2ljZVBhdGhziAEBElAKIndhcm5pbmdfbWlzc2luZ19pbnZvaWNlX2JsaW5kZWRwYXkYMyAB'
    'KAlIKFIfd2FybmluZ01pc3NpbmdJbnZvaWNlQmxpbmRlZHBheYgBARJPCiJ3YXJuaW5nX21pc3'
    'NpbmdfaW52b2ljZV9jcmVhdGVkX2F0GDQgASgJSClSHndhcm5pbmdNaXNzaW5nSW52b2ljZUNy'
    'ZWF0ZWRBdIgBARJTCiR3YXJuaW5nX21pc3NpbmdfaW52b2ljZV9wYXltZW50X2hhc2gYNSABKA'
    'lIKlIgd2FybmluZ01pc3NpbmdJbnZvaWNlUGF5bWVudEhhc2iIAQESSAoed2FybmluZ19taXNz'
    'aW5nX2ludm9pY2VfYW1vdW50GDYgASgJSCtSG3dhcm5pbmdNaXNzaW5nSW52b2ljZUFtb3VudI'
    'gBARJhCit3YXJuaW5nX21pc3NpbmdfaW52b2ljZV9yZWN1cnJlbmNlX2Jhc2V0aW1lGDcgASgJ'
    'SCxSJ3dhcm5pbmdNaXNzaW5nSW52b2ljZVJlY3VycmVuY2VCYXNldGltZYgBARJJCh93YXJuaW'
    '5nX21pc3NpbmdfaW52b2ljZV9ub2RlX2lkGDggASgJSC1SG3dhcm5pbmdNaXNzaW5nSW52b2lj'
    'ZU5vZGVJZIgBARJOCiF3YXJuaW5nX21pc3NpbmdfaW52b2ljZV9zaWduYXR1cmUYOSABKAlILl'
    'Ied2FybmluZ01pc3NpbmdJbnZvaWNlU2lnbmF0dXJliAEBEk4KIXdhcm5pbmdfaW52YWxpZF9p'
    'bnZvaWNlX3NpZ25hdHVyZRg6IAEoCUgvUh53YXJuaW5nSW52YWxpZEludm9pY2VTaWduYXR1cm'
    'WIAQESMgoJZmFsbGJhY2tzGDsgAygLMhQuY2xuLkRlY29kZUZhbGxiYWNrc1IJZmFsbGJhY2tz'
    'EiIKCmNyZWF0ZWRfYXQYPCABKARIMFIJY3JlYXRlZEF0iAEBEhsKBmV4cGlyeRg9IAEoBEgxUg'
    'ZleHBpcnmIAQESGQoFcGF5ZWUYPiABKAxIMlIFcGF5ZWWIAQESJgoMcGF5bWVudF9oYXNoGD8g'
    'ASgMSDNSC3BheW1lbnRIYXNoiAEBEi4KEGRlc2NyaXB0aW9uX2hhc2gYQCABKAxINFIPZGVzY3'
    'JpcHRpb25IYXNoiAEBEjYKFW1pbl9maW5hbF9jbHR2X2V4cGlyeRhBIAEoDUg1UhJtaW5GaW5h'
    'bENsdHZFeHBpcnmIAQESKgoOcGF5bWVudF9zZWNyZXQYQiABKAxINlINcGF5bWVudFNlY3JldI'
    'gBARIuChBwYXltZW50X21ldGFkYXRhGEMgASgMSDdSD3BheW1lbnRNZXRhZGF0YYgBARImCgVl'
    'eHRyYRhFIAMoCzIQLmNsbi5EZWNvZGVFeHRyYVIFZXh0cmESIAoJdW5pcXVlX2lkGEYgASgJSD'
    'hSCHVuaXF1ZUlkiAEBEh0KB3ZlcnNpb24YRyABKAlIOVIHdmVyc2lvbogBARIbCgZzdHJpbmcY'
    'SCABKAlIOlIGc3RyaW5niAEBEjsKDHJlc3RyaWN0aW9ucxhJIAMoCzIXLmNsbi5EZWNvZGVSZX'
    'N0cmljdGlvbnNSDHJlc3RyaWN0aW9ucxI+Chl3YXJuaW5nX3J1bmVfaW52YWxpZF91dGY4GEog'
    'ASgJSDtSFndhcm5pbmdSdW5lSW52YWxpZFV0ZjiIAQESFQoDaGV4GEsgASgMSDxSA2hleIgBAR'
    'IhCglkZWNyeXB0ZWQYTCABKAxIPVIJZGVjcnlwdGVkiAEBEiEKCXNpZ25hdHVyZRhNIAEoCUg+'
    'UglzaWduYXR1cmWIAQESHwoIY3VycmVuY3kYTiABKAlIP1IIY3VycmVuY3mIAQESMQoLYW1vdW'
    '50X21zYXQYTyABKAsyCy5jbG4uQW1vdW50SEBSCmFtb3VudE1zYXSIAQESJQoLZGVzY3JpcHRp'
    'b24YUCABKAlIQVILZGVzY3JpcHRpb26IAQESHwoIZmVhdHVyZXMYUSABKAxIQlIIZmVhdHVyZX'
    'OIAQESNQoGcm91dGVzGFIgASgLMhguY2xuLkRlY29kZVJvdXRlaGludExpc3RIQ1IGcm91dGVz'
    'iAEBEisKD29mZmVyX2lzc3Vlcl9pZBhTIAEoDEhEUg1vZmZlcklzc3VlcklkiAEBEkkKH3dhcm'
    '5pbmdfbWlzc2luZ19vZmZlcl9pc3N1ZXJfaWQYVCABKAlIRVIbd2FybmluZ01pc3NpbmdPZmZl'
    'cklzc3VlcklkiAEBEjoKDGludnJlcV9wYXRocxhVIAMoCzIXLmNsbi5EZWNvZGVJbnZyZXFfcG'
    'F0aHNSC2ludnJlcVBhdGhzEkAKGndhcm5pbmdfZW1wdHlfYmxpbmRlZF9wYXRoGFYgASgJSEZS'
    'F3dhcm5pbmdFbXB0eUJsaW5kZWRQYXRoiAEBIoMBCgpEZWNvZGVUeXBlEhAKDEJPTFQxMl9PRk'
    'ZFUhAAEhIKDkJPTFQxMl9JTlZPSUNFEAESGgoWQk9MVDEyX0lOVk9JQ0VfUkVRVUVTVBACEhIK'
    'DkJPTFQxMV9JTlZPSUNFEAMSCAoEUlVORRAEEhUKEUVNRVJHRU5DWV9SRUNPVkVSEAVCCwoJX2'
    '9mZmVyX2lkQhEKD19vZmZlcl9tZXRhZGF0YUIRCg9fb2ZmZXJfY3VycmVuY3lCIQofX3dhcm5p'
    'bmdfdW5rbm93bl9vZmZlcl9jdXJyZW5jeUIWChRfY3VycmVuY3lfbWlub3JfdW5pdEIPCg1fb2'
    'ZmZXJfYW1vdW50QhQKEl9vZmZlcl9hbW91bnRfbXNhdEIUChJfb2ZmZXJfZGVzY3JpcHRpb25C'
    'DwoNX29mZmVyX2lzc3VlckIRCg9fb2ZmZXJfZmVhdHVyZXNCGAoWX29mZmVyX2Fic29sdXRlX2'
    'V4cGlyeUIVChNfb2ZmZXJfcXVhbnRpdHlfbWF4QhAKDl9vZmZlcl9ub2RlX2lkQiAKHl93YXJu'
    'aW5nX21pc3Npbmdfb2ZmZXJfbm9kZV9pZEIkCiJfd2FybmluZ19pbnZhbGlkX29mZmVyX2Rlc2'
    'NyaXB0aW9uQiQKIl93YXJuaW5nX21pc3Npbmdfb2ZmZXJfZGVzY3JpcHRpb25CIQofX3dhcm5p'
    'bmdfaW52YWxpZF9vZmZlcl9jdXJyZW5jeUIfCh1fd2FybmluZ19pbnZhbGlkX29mZmVyX2lzc3'
    'VlckISChBfaW52cmVxX21ldGFkYXRhQhIKEF9pbnZyZXFfcGF5ZXJfaWRCDwoNX2ludnJlcV9j'
    'aGFpbkIVChNfaW52cmVxX2Ftb3VudF9tc2F0QhIKEF9pbnZyZXFfZmVhdHVyZXNCEgoQX2ludn'
    'JlcV9xdWFudGl0eUIUChJfaW52cmVxX3BheWVyX25vdGVCHAoaX2ludnJlcV9yZWN1cnJlbmNl'
    'X2NvdW50ZXJCGgoYX2ludnJlcV9yZWN1cnJlbmNlX3N0YXJ0QiIKIF93YXJuaW5nX21pc3Npbm'
    'dfaW52cmVxX21ldGFkYXRhQiIKIF93YXJuaW5nX21pc3NpbmdfaW52cmVxX3BheWVyX2lkQiQK'
    'Il93YXJuaW5nX2ludmFsaWRfaW52cmVxX3BheWVyX25vdGVCLAoqX3dhcm5pbmdfbWlzc2luZ1'
    '9pbnZvaWNlX3JlcXVlc3Rfc2lnbmF0dXJlQiwKKl93YXJuaW5nX2ludmFsaWRfaW52b2ljZV9y'
    'ZXF1ZXN0X3NpZ25hdHVyZUIVChNfaW52b2ljZV9jcmVhdGVkX2F0QhoKGF9pbnZvaWNlX3JlbG'
    'F0aXZlX2V4cGlyeUIXChVfaW52b2ljZV9wYXltZW50X2hhc2hCFgoUX2ludm9pY2VfYW1vdW50'
    'X21zYXRCEwoRX2ludm9pY2VfZmVhdHVyZXNCEgoQX2ludm9pY2Vfbm9kZV9pZEIeChxfaW52b2'
    'ljZV9yZWN1cnJlbmNlX2Jhc2V0aW1lQiAKHl93YXJuaW5nX21pc3NpbmdfaW52b2ljZV9wYXRo'
    'c0IlCiNfd2FybmluZ19taXNzaW5nX2ludm9pY2VfYmxpbmRlZHBheUIlCiNfd2FybmluZ19taX'
    'NzaW5nX2ludm9pY2VfY3JlYXRlZF9hdEInCiVfd2FybmluZ19taXNzaW5nX2ludm9pY2VfcGF5'
    'bWVudF9oYXNoQiEKH193YXJuaW5nX21pc3NpbmdfaW52b2ljZV9hbW91bnRCLgosX3dhcm5pbm'
    'dfbWlzc2luZ19pbnZvaWNlX3JlY3VycmVuY2VfYmFzZXRpbWVCIgogX3dhcm5pbmdfbWlzc2lu'
    'Z19pbnZvaWNlX25vZGVfaWRCJAoiX3dhcm5pbmdfbWlzc2luZ19pbnZvaWNlX3NpZ25hdHVyZU'
    'IkCiJfd2FybmluZ19pbnZhbGlkX2ludm9pY2Vfc2lnbmF0dXJlQg0KC19jcmVhdGVkX2F0QgkK'
    'B19leHBpcnlCCAoGX3BheWVlQg8KDV9wYXltZW50X2hhc2hCEwoRX2Rlc2NyaXB0aW9uX2hhc2'
    'hCGAoWX21pbl9maW5hbF9jbHR2X2V4cGlyeUIRCg9fcGF5bWVudF9zZWNyZXRCEwoRX3BheW1l'
    'bnRfbWV0YWRhdGFCDAoKX3VuaXF1ZV9pZEIKCghfdmVyc2lvbkIJCgdfc3RyaW5nQhwKGl93YX'
    'JuaW5nX3J1bmVfaW52YWxpZF91dGY4QgYKBF9oZXhCDAoKX2RlY3J5cHRlZEIMCgpfc2lnbmF0'
    'dXJlQgsKCV9jdXJyZW5jeUIOCgxfYW1vdW50X21zYXRCDgoMX2Rlc2NyaXB0aW9uQgsKCV9mZW'
    'F0dXJlc0IJCgdfcm91dGVzQhIKEF9vZmZlcl9pc3N1ZXJfaWRCIgogX3dhcm5pbmdfbWlzc2lu'
    'Z19vZmZlcl9pc3N1ZXJfaWRCHQobX3dhcm5pbmdfZW1wdHlfYmxpbmRlZF9wYXRo');

@$core.Deprecated('Use decodeOffer_pathsDescriptor instead')
const DecodeOffer_paths$json = {
  '1': 'DecodeOffer_paths',
  '2': [
    {'1': 'first_node_id', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'firstNodeId', '17': true},
    {'1': 'blinding', '3': 2, '4': 1, '5': 12, '10': 'blinding'},
    {'1': 'first_scid_dir', '3': 4, '4': 1, '5': 13, '9': 1, '10': 'firstScidDir', '17': true},
    {'1': 'first_scid', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'firstScid', '17': true},
  ],
  '8': [
    {'1': '_first_node_id'},
    {'1': '_first_scid_dir'},
    {'1': '_first_scid'},
  ],
};

/// Descriptor for `DecodeOffer_paths`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeOffer_pathsDescriptor = $convert.base64Decode(
    'ChFEZWNvZGVPZmZlcl9wYXRocxInCg1maXJzdF9ub2RlX2lkGAEgASgMSABSC2ZpcnN0Tm9kZU'
    'lkiAEBEhoKCGJsaW5kaW5nGAIgASgMUghibGluZGluZxIpCg5maXJzdF9zY2lkX2RpchgEIAEo'
    'DUgBUgxmaXJzdFNjaWREaXKIAQESIgoKZmlyc3Rfc2NpZBgFIAEoCUgCUglmaXJzdFNjaWSIAQ'
    'FCEAoOX2ZpcnN0X25vZGVfaWRCEQoPX2ZpcnN0X3NjaWRfZGlyQg0KC19maXJzdF9zY2lk');

@$core.Deprecated('Use decodeOffer_recurrencePaywindowDescriptor instead')
const DecodeOffer_recurrencePaywindow$json = {
  '1': 'DecodeOffer_recurrencePaywindow',
  '2': [
    {'1': 'seconds_before', '3': 1, '4': 1, '5': 13, '10': 'secondsBefore'},
    {'1': 'seconds_after', '3': 2, '4': 1, '5': 13, '10': 'secondsAfter'},
    {'1': 'proportional_amount', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'proportionalAmount', '17': true},
  ],
  '8': [
    {'1': '_proportional_amount'},
  ],
};

/// Descriptor for `DecodeOffer_recurrencePaywindow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeOffer_recurrencePaywindowDescriptor = $convert.base64Decode(
    'Ch9EZWNvZGVPZmZlcl9yZWN1cnJlbmNlUGF5d2luZG93EiUKDnNlY29uZHNfYmVmb3JlGAEgAS'
    'gNUg1zZWNvbmRzQmVmb3JlEiMKDXNlY29uZHNfYWZ0ZXIYAiABKA1SDHNlY29uZHNBZnRlchI0'
    'ChNwcm9wb3J0aW9uYWxfYW1vdW50GAMgASgISABSEnByb3BvcnRpb25hbEFtb3VudIgBAUIWCh'
    'RfcHJvcG9ydGlvbmFsX2Ftb3VudA==');

@$core.Deprecated('Use decodeInvreq_pathsDescriptor instead')
const DecodeInvreq_paths$json = {
  '1': 'DecodeInvreq_paths',
  '2': [
    {'1': 'first_scid_dir', '3': 1, '4': 1, '5': 13, '9': 0, '10': 'firstScidDir', '17': true},
    {'1': 'blinding', '3': 2, '4': 1, '5': 12, '10': 'blinding'},
    {'1': 'first_node_id', '3': 3, '4': 1, '5': 12, '9': 1, '10': 'firstNodeId', '17': true},
    {'1': 'first_scid', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'firstScid', '17': true},
    {'1': 'path', '3': 5, '4': 3, '5': 11, '6': '.cln.DecodeInvreq_pathsPath', '10': 'path'},
  ],
  '8': [
    {'1': '_first_scid_dir'},
    {'1': '_first_node_id'},
    {'1': '_first_scid'},
  ],
};

/// Descriptor for `DecodeInvreq_paths`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeInvreq_pathsDescriptor = $convert.base64Decode(
    'ChJEZWNvZGVJbnZyZXFfcGF0aHMSKQoOZmlyc3Rfc2NpZF9kaXIYASABKA1IAFIMZmlyc3RTY2'
    'lkRGlyiAEBEhoKCGJsaW5kaW5nGAIgASgMUghibGluZGluZxInCg1maXJzdF9ub2RlX2lkGAMg'
    'ASgMSAFSC2ZpcnN0Tm9kZUlkiAEBEiIKCmZpcnN0X3NjaWQYBCABKAlIAlIJZmlyc3RTY2lkiA'
    'EBEi8KBHBhdGgYBSADKAsyGy5jbG4uRGVjb2RlSW52cmVxX3BhdGhzUGF0aFIEcGF0aEIRCg9f'
    'Zmlyc3Rfc2NpZF9kaXJCEAoOX2ZpcnN0X25vZGVfaWRCDQoLX2ZpcnN0X3NjaWQ=');

@$core.Deprecated('Use decodeInvreq_pathsPathDescriptor instead')
const DecodeInvreq_pathsPath$json = {
  '1': 'DecodeInvreq_pathsPath',
  '2': [
    {'1': 'blinded_node_id', '3': 1, '4': 1, '5': 12, '10': 'blindedNodeId'},
    {'1': 'encrypted_recipient_data', '3': 2, '4': 1, '5': 12, '10': 'encryptedRecipientData'},
  ],
};

/// Descriptor for `DecodeInvreq_pathsPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeInvreq_pathsPathDescriptor = $convert.base64Decode(
    'ChZEZWNvZGVJbnZyZXFfcGF0aHNQYXRoEiYKD2JsaW5kZWRfbm9kZV9pZBgBIAEoDFINYmxpbm'
    'RlZE5vZGVJZBI4ChhlbmNyeXB0ZWRfcmVjaXBpZW50X2RhdGEYAiABKAxSFmVuY3J5cHRlZFJl'
    'Y2lwaWVudERhdGE=');

@$core.Deprecated('Use decodeInvoice_pathsPathDescriptor instead')
const DecodeInvoice_pathsPath$json = {
  '1': 'DecodeInvoice_pathsPath',
  '2': [
    {'1': 'blinded_node_id', '3': 1, '4': 1, '5': 12, '10': 'blindedNodeId'},
    {'1': 'encrypted_recipient_data', '3': 2, '4': 1, '5': 12, '10': 'encryptedRecipientData'},
  ],
};

/// Descriptor for `DecodeInvoice_pathsPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeInvoice_pathsPathDescriptor = $convert.base64Decode(
    'ChdEZWNvZGVJbnZvaWNlX3BhdGhzUGF0aBImCg9ibGluZGVkX25vZGVfaWQYASABKAxSDWJsaW'
    '5kZWROb2RlSWQSOAoYZW5jcnlwdGVkX3JlY2lwaWVudF9kYXRhGAIgASgMUhZlbmNyeXB0ZWRS'
    'ZWNpcGllbnREYXRh');

@$core.Deprecated('Use decodeInvoice_fallbacksDescriptor instead')
const DecodeInvoice_fallbacks$json = {
  '1': 'DecodeInvoice_fallbacks',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    {'1': 'hex', '3': 2, '4': 1, '5': 12, '10': 'hex'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'address', '17': true},
  ],
  '8': [
    {'1': '_address'},
  ],
};

/// Descriptor for `DecodeInvoice_fallbacks`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeInvoice_fallbacksDescriptor = $convert.base64Decode(
    'ChdEZWNvZGVJbnZvaWNlX2ZhbGxiYWNrcxIYCgd2ZXJzaW9uGAEgASgNUgd2ZXJzaW9uEhAKA2'
    'hleBgCIAEoDFIDaGV4Eh0KB2FkZHJlc3MYAyABKAlIAFIHYWRkcmVzc4gBAUIKCghfYWRkcmVz'
    'cw==');

@$core.Deprecated('Use decodeFallbacksDescriptor instead')
const DecodeFallbacks$json = {
  '1': 'DecodeFallbacks',
  '2': [
    {'1': 'warning_invoice_fallbacks_version_invalid', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'warningInvoiceFallbacksVersionInvalid', '17': true},
    {'1': 'item_type', '3': 2, '4': 1, '5': 14, '6': '.cln.DecodeFallbacks.DecodeFallbacksType', '10': 'itemType'},
    {'1': 'addr', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'addr', '17': true},
    {'1': 'hex', '3': 4, '4': 1, '5': 12, '10': 'hex'},
  ],
  '4': [DecodeFallbacks_DecodeFallbacksType$json],
  '8': [
    {'1': '_warning_invoice_fallbacks_version_invalid'},
    {'1': '_addr'},
  ],
};

@$core.Deprecated('Use decodeFallbacksDescriptor instead')
const DecodeFallbacks_DecodeFallbacksType$json = {
  '1': 'DecodeFallbacksType',
  '2': [
    {'1': 'P2PKH', '2': 0},
    {'1': 'P2SH', '2': 1},
    {'1': 'P2WPKH', '2': 2},
    {'1': 'P2WSH', '2': 3},
    {'1': 'P2TR', '2': 4},
  ],
};

/// Descriptor for `DecodeFallbacks`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeFallbacksDescriptor = $convert.base64Decode(
    'Cg9EZWNvZGVGYWxsYmFja3MSXQopd2FybmluZ19pbnZvaWNlX2ZhbGxiYWNrc192ZXJzaW9uX2'
    'ludmFsaWQYASABKAlIAFIld2FybmluZ0ludm9pY2VGYWxsYmFja3NWZXJzaW9uSW52YWxpZIgB'
    'ARJFCglpdGVtX3R5cGUYAiABKA4yKC5jbG4uRGVjb2RlRmFsbGJhY2tzLkRlY29kZUZhbGxiYW'
    'Nrc1R5cGVSCGl0ZW1UeXBlEhcKBGFkZHIYAyABKAlIAVIEYWRkcogBARIQCgNoZXgYBCABKAxS'
    'A2hleCJLChNEZWNvZGVGYWxsYmFja3NUeXBlEgkKBVAyUEtIEAASCAoEUDJTSBABEgoKBlAyV1'
    'BLSBACEgkKBVAyV1NIEAMSCAoEUDJUUhAEQiwKKl93YXJuaW5nX2ludm9pY2VfZmFsbGJhY2tz'
    'X3ZlcnNpb25faW52YWxpZEIHCgVfYWRkcg==');

@$core.Deprecated('Use decodeExtraDescriptor instead')
const DecodeExtra$json = {
  '1': 'DecodeExtra',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `DecodeExtra`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeExtraDescriptor = $convert.base64Decode(
    'CgtEZWNvZGVFeHRyYRIQCgN0YWcYASABKAlSA3RhZxISCgRkYXRhGAIgASgJUgRkYXRh');

@$core.Deprecated('Use decodeRestrictionsDescriptor instead')
const DecodeRestrictions$json = {
  '1': 'DecodeRestrictions',
  '2': [
    {'1': 'alternatives', '3': 1, '4': 3, '5': 9, '10': 'alternatives'},
    {'1': 'summary', '3': 2, '4': 1, '5': 9, '10': 'summary'},
  ],
};

/// Descriptor for `DecodeRestrictions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decodeRestrictionsDescriptor = $convert.base64Decode(
    'ChJEZWNvZGVSZXN0cmljdGlvbnMSIgoMYWx0ZXJuYXRpdmVzGAEgAygJUgxhbHRlcm5hdGl2ZX'
    'MSGAoHc3VtbWFyeRgCIAEoCVIHc3VtbWFyeQ==');

@$core.Deprecated('Use delpayRequestDescriptor instead')
const DelpayRequest$json = {
  '1': 'DelpayRequest',
  '2': [
    {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.cln.DelpayRequest.DelpayStatus', '10': 'status'},
    {'1': 'partid', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'partid', '17': true},
    {'1': 'groupid', '3': 4, '4': 1, '5': 4, '9': 1, '10': 'groupid', '17': true},
  ],
  '4': [DelpayRequest_DelpayStatus$json],
  '8': [
    {'1': '_partid'},
    {'1': '_groupid'},
  ],
};

@$core.Deprecated('Use delpayRequestDescriptor instead')
const DelpayRequest_DelpayStatus$json = {
  '1': 'DelpayStatus',
  '2': [
    {'1': 'COMPLETE', '2': 0},
    {'1': 'FAILED', '2': 1},
  ],
};

/// Descriptor for `DelpayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delpayRequestDescriptor = $convert.base64Decode(
    'Cg1EZWxwYXlSZXF1ZXN0EiEKDHBheW1lbnRfaGFzaBgBIAEoDFILcGF5bWVudEhhc2gSNwoGc3'
    'RhdHVzGAIgASgOMh8uY2xuLkRlbHBheVJlcXVlc3QuRGVscGF5U3RhdHVzUgZzdGF0dXMSGwoG'
    'cGFydGlkGAMgASgESABSBnBhcnRpZIgBARIdCgdncm91cGlkGAQgASgESAFSB2dyb3VwaWSIAQ'
    'EiKAoMRGVscGF5U3RhdHVzEgwKCENPTVBMRVRFEAASCgoGRkFJTEVEEAFCCQoHX3BhcnRpZEIK'
    'CghfZ3JvdXBpZA==');

@$core.Deprecated('Use delpayResponseDescriptor instead')
const DelpayResponse$json = {
  '1': 'DelpayResponse',
  '2': [
    {'1': 'payments', '3': 1, '4': 3, '5': 11, '6': '.cln.DelpayPayments', '10': 'payments'},
  ],
};

/// Descriptor for `DelpayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delpayResponseDescriptor = $convert.base64Decode(
    'Cg5EZWxwYXlSZXNwb25zZRIvCghwYXltZW50cxgBIAMoCzITLmNsbi5EZWxwYXlQYXltZW50c1'
    'IIcGF5bWVudHM=');

@$core.Deprecated('Use delpayPaymentsDescriptor instead')
const DelpayPayments$json = {
  '1': 'DelpayPayments',
  '2': [
    {'1': 'created_index', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'createdIndex', '17': true},
    {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.cln.DelpayPayments.DelpayPaymentsStatus', '10': 'status'},
    {'1': 'amount_sent_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountSentMsat'},
    {'1': 'partid', '3': 6, '4': 1, '5': 4, '9': 1, '10': 'partid', '17': true},
    {'1': 'destination', '3': 7, '4': 1, '5': 12, '9': 2, '10': 'destination', '17': true},
    {'1': 'amount_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '9': 3, '10': 'amountMsat', '17': true},
    {'1': 'created_at', '3': 9, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'updated_index', '3': 10, '4': 1, '5': 4, '9': 4, '10': 'updatedIndex', '17': true},
    {'1': 'completed_at', '3': 11, '4': 1, '5': 4, '9': 5, '10': 'completedAt', '17': true},
    {'1': 'groupid', '3': 12, '4': 1, '5': 4, '9': 6, '10': 'groupid', '17': true},
    {'1': 'payment_preimage', '3': 13, '4': 1, '5': 12, '9': 7, '10': 'paymentPreimage', '17': true},
    {'1': 'label', '3': 14, '4': 1, '5': 9, '9': 8, '10': 'label', '17': true},
    {'1': 'bolt11', '3': 15, '4': 1, '5': 9, '9': 9, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 16, '4': 1, '5': 9, '9': 10, '10': 'bolt12', '17': true},
    {'1': 'erroronion', '3': 17, '4': 1, '5': 12, '9': 11, '10': 'erroronion', '17': true},
  ],
  '4': [DelpayPayments_DelpayPaymentsStatus$json],
  '8': [
    {'1': '_created_index'},
    {'1': '_partid'},
    {'1': '_destination'},
    {'1': '_amount_msat'},
    {'1': '_updated_index'},
    {'1': '_completed_at'},
    {'1': '_groupid'},
    {'1': '_payment_preimage'},
    {'1': '_label'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_erroronion'},
  ],
};

@$core.Deprecated('Use delpayPaymentsDescriptor instead')
const DelpayPayments_DelpayPaymentsStatus$json = {
  '1': 'DelpayPaymentsStatus',
  '2': [
    {'1': 'PENDING', '2': 0},
    {'1': 'FAILED', '2': 1},
    {'1': 'COMPLETE', '2': 2},
  ],
};

/// Descriptor for `DelpayPayments`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delpayPaymentsDescriptor = $convert.base64Decode(
    'Cg5EZWxwYXlQYXltZW50cxIoCg1jcmVhdGVkX2luZGV4GAEgASgESABSDGNyZWF0ZWRJbmRleI'
    'gBARIOCgJpZBgCIAEoBFICaWQSIQoMcGF5bWVudF9oYXNoGAMgASgMUgtwYXltZW50SGFzaBJA'
    'CgZzdGF0dXMYBCABKA4yKC5jbG4uRGVscGF5UGF5bWVudHMuRGVscGF5UGF5bWVudHNTdGF0dX'
    'NSBnN0YXR1cxI1ChBhbW91bnRfc2VudF9tc2F0GAUgASgLMgsuY2xuLkFtb3VudFIOYW1vdW50'
    'U2VudE1zYXQSGwoGcGFydGlkGAYgASgESAFSBnBhcnRpZIgBARIlCgtkZXN0aW5hdGlvbhgHIA'
    'EoDEgCUgtkZXN0aW5hdGlvbogBARIxCgthbW91bnRfbXNhdBgIIAEoCzILLmNsbi5BbW91bnRI'
    'A1IKYW1vdW50TXNhdIgBARIdCgpjcmVhdGVkX2F0GAkgASgEUgljcmVhdGVkQXQSKAoNdXBkYX'
    'RlZF9pbmRleBgKIAEoBEgEUgx1cGRhdGVkSW5kZXiIAQESJgoMY29tcGxldGVkX2F0GAsgASgE'
    'SAVSC2NvbXBsZXRlZEF0iAEBEh0KB2dyb3VwaWQYDCABKARIBlIHZ3JvdXBpZIgBARIuChBwYX'
    'ltZW50X3ByZWltYWdlGA0gASgMSAdSD3BheW1lbnRQcmVpbWFnZYgBARIZCgVsYWJlbBgOIAEo'
    'CUgIUgVsYWJlbIgBARIbCgZib2x0MTEYDyABKAlICVIGYm9sdDExiAEBEhsKBmJvbHQxMhgQIA'
    'EoCUgKUgZib2x0MTKIAQESIwoKZXJyb3JvbmlvbhgRIAEoDEgLUgplcnJvcm9uaW9uiAEBIj0K'
    'FERlbHBheVBheW1lbnRzU3RhdHVzEgsKB1BFTkRJTkcQABIKCgZGQUlMRUQQARIMCghDT01QTE'
    'VURRACQhAKDl9jcmVhdGVkX2luZGV4QgkKB19wYXJ0aWRCDgoMX2Rlc3RpbmF0aW9uQg4KDF9h'
    'bW91bnRfbXNhdEIQCg5fdXBkYXRlZF9pbmRleEIPCg1fY29tcGxldGVkX2F0QgoKCF9ncm91cG'
    'lkQhMKEV9wYXltZW50X3ByZWltYWdlQggKBl9sYWJlbEIJCgdfYm9sdDExQgkKB19ib2x0MTJC'
    'DQoLX2Vycm9yb25pb24=');

@$core.Deprecated('Use delforwardRequestDescriptor instead')
const DelforwardRequest$json = {
  '1': 'DelforwardRequest',
  '2': [
    {'1': 'in_channel', '3': 1, '4': 1, '5': 9, '10': 'inChannel'},
    {'1': 'in_htlc_id', '3': 2, '4': 1, '5': 4, '10': 'inHtlcId'},
    {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.cln.DelforwardRequest.DelforwardStatus', '10': 'status'},
  ],
  '4': [DelforwardRequest_DelforwardStatus$json],
};

@$core.Deprecated('Use delforwardRequestDescriptor instead')
const DelforwardRequest_DelforwardStatus$json = {
  '1': 'DelforwardStatus',
  '2': [
    {'1': 'SETTLED', '2': 0},
    {'1': 'LOCAL_FAILED', '2': 1},
    {'1': 'FAILED', '2': 2},
  ],
};

/// Descriptor for `DelforwardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delforwardRequestDescriptor = $convert.base64Decode(
    'ChFEZWxmb3J3YXJkUmVxdWVzdBIdCgppbl9jaGFubmVsGAEgASgJUglpbkNoYW5uZWwSHAoKaW'
    '5faHRsY19pZBgCIAEoBFIIaW5IdGxjSWQSPwoGc3RhdHVzGAMgASgOMicuY2xuLkRlbGZvcndh'
    'cmRSZXF1ZXN0LkRlbGZvcndhcmRTdGF0dXNSBnN0YXR1cyI9ChBEZWxmb3J3YXJkU3RhdHVzEg'
    'sKB1NFVFRMRUQQABIQCgxMT0NBTF9GQUlMRUQQARIKCgZGQUlMRUQQAg==');

@$core.Deprecated('Use delforwardResponseDescriptor instead')
const DelforwardResponse$json = {
  '1': 'DelforwardResponse',
};

/// Descriptor for `DelforwardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delforwardResponseDescriptor = $convert.base64Decode(
    'ChJEZWxmb3J3YXJkUmVzcG9uc2U=');

@$core.Deprecated('Use disableofferRequestDescriptor instead')
const DisableofferRequest$json = {
  '1': 'DisableofferRequest',
  '2': [
    {'1': 'offer_id', '3': 1, '4': 1, '5': 12, '10': 'offerId'},
  ],
};

/// Descriptor for `DisableofferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disableofferRequestDescriptor = $convert.base64Decode(
    'ChNEaXNhYmxlb2ZmZXJSZXF1ZXN0EhkKCG9mZmVyX2lkGAEgASgMUgdvZmZlcklk');

@$core.Deprecated('Use disableofferResponseDescriptor instead')
const DisableofferResponse$json = {
  '1': 'DisableofferResponse',
  '2': [
    {'1': 'offer_id', '3': 1, '4': 1, '5': 12, '10': 'offerId'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {'1': 'single_use', '3': 3, '4': 1, '5': 8, '10': 'singleUse'},
    {'1': 'bolt12', '3': 4, '4': 1, '5': 9, '10': 'bolt12'},
    {'1': 'used', '3': 5, '4': 1, '5': 8, '10': 'used'},
    {'1': 'label', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
  ],
  '8': [
    {'1': '_label'},
  ],
};

/// Descriptor for `DisableofferResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disableofferResponseDescriptor = $convert.base64Decode(
    'ChREaXNhYmxlb2ZmZXJSZXNwb25zZRIZCghvZmZlcl9pZBgBIAEoDFIHb2ZmZXJJZBIWCgZhY3'
    'RpdmUYAiABKAhSBmFjdGl2ZRIdCgpzaW5nbGVfdXNlGAMgASgIUglzaW5nbGVVc2USFgoGYm9s'
    'dDEyGAQgASgJUgZib2x0MTISEgoEdXNlZBgFIAEoCFIEdXNlZBIZCgVsYWJlbBgGIAEoCUgAUg'
    'VsYWJlbIgBAUIICgZfbGFiZWw=');

@$core.Deprecated('Use disconnectRequestDescriptor instead')
const DisconnectRequest$json = {
  '1': 'DisconnectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'force', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'force', '17': true},
  ],
  '8': [
    {'1': '_force'},
  ],
};

/// Descriptor for `DisconnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectRequestDescriptor = $convert.base64Decode(
    'ChFEaXNjb25uZWN0UmVxdWVzdBIOCgJpZBgBIAEoDFICaWQSGQoFZm9yY2UYAiABKAhIAFIFZm'
    '9yY2WIAQFCCAoGX2ZvcmNl');

@$core.Deprecated('Use disconnectResponseDescriptor instead')
const DisconnectResponse$json = {
  '1': 'DisconnectResponse',
};

/// Descriptor for `DisconnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectResponseDescriptor = $convert.base64Decode(
    'ChJEaXNjb25uZWN0UmVzcG9uc2U=');

@$core.Deprecated('Use feeratesRequestDescriptor instead')
const FeeratesRequest$json = {
  '1': 'FeeratesRequest',
  '2': [
    {'1': 'style', '3': 1, '4': 1, '5': 14, '6': '.cln.FeeratesRequest.FeeratesStyle', '10': 'style'},
  ],
  '4': [FeeratesRequest_FeeratesStyle$json],
};

@$core.Deprecated('Use feeratesRequestDescriptor instead')
const FeeratesRequest_FeeratesStyle$json = {
  '1': 'FeeratesStyle',
  '2': [
    {'1': 'PERKB', '2': 0},
    {'1': 'PERKW', '2': 1},
  ],
};

/// Descriptor for `FeeratesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeratesRequestDescriptor = $convert.base64Decode(
    'Cg9GZWVyYXRlc1JlcXVlc3QSOAoFc3R5bGUYASABKA4yIi5jbG4uRmVlcmF0ZXNSZXF1ZXN0Lk'
    'ZlZXJhdGVzU3R5bGVSBXN0eWxlIiUKDUZlZXJhdGVzU3R5bGUSCQoFUEVSS0IQABIJCgVQRVJL'
    'VxAB');

@$core.Deprecated('Use feeratesResponseDescriptor instead')
const FeeratesResponse$json = {
  '1': 'FeeratesResponse',
  '2': [
    {'1': 'warning_missing_feerates', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'warningMissingFeerates', '17': true},
    {'1': 'perkb', '3': 2, '4': 1, '5': 11, '6': '.cln.FeeratesPerkb', '9': 1, '10': 'perkb', '17': true},
    {'1': 'perkw', '3': 3, '4': 1, '5': 11, '6': '.cln.FeeratesPerkw', '9': 2, '10': 'perkw', '17': true},
    {'1': 'onchain_fee_estimates', '3': 4, '4': 1, '5': 11, '6': '.cln.FeeratesOnchain_fee_estimates', '9': 3, '10': 'onchainFeeEstimates', '17': true},
  ],
  '8': [
    {'1': '_warning_missing_feerates'},
    {'1': '_perkb'},
    {'1': '_perkw'},
    {'1': '_onchain_fee_estimates'},
  ],
};

/// Descriptor for `FeeratesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeratesResponseDescriptor = $convert.base64Decode(
    'ChBGZWVyYXRlc1Jlc3BvbnNlEj0KGHdhcm5pbmdfbWlzc2luZ19mZWVyYXRlcxgBIAEoCUgAUh'
    'Z3YXJuaW5nTWlzc2luZ0ZlZXJhdGVziAEBEi0KBXBlcmtiGAIgASgLMhIuY2xuLkZlZXJhdGVz'
    'UGVya2JIAVIFcGVya2KIAQESLQoFcGVya3cYAyABKAsyEi5jbG4uRmVlcmF0ZXNQZXJrd0gCUg'
    'VwZXJrd4gBARJbChVvbmNoYWluX2ZlZV9lc3RpbWF0ZXMYBCABKAsyIi5jbG4uRmVlcmF0ZXNP'
    'bmNoYWluX2ZlZV9lc3RpbWF0ZXNIA1ITb25jaGFpbkZlZUVzdGltYXRlc4gBAUIbChlfd2Fybm'
    'luZ19taXNzaW5nX2ZlZXJhdGVzQggKBl9wZXJrYkIICgZfcGVya3dCGAoWX29uY2hhaW5fZmVl'
    'X2VzdGltYXRlcw==');

@$core.Deprecated('Use feeratesPerkbDescriptor instead')
const FeeratesPerkb$json = {
  '1': 'FeeratesPerkb',
  '2': [
    {'1': 'min_acceptable', '3': 1, '4': 1, '5': 13, '10': 'minAcceptable'},
    {'1': 'max_acceptable', '3': 2, '4': 1, '5': 13, '10': 'maxAcceptable'},
    {'1': 'opening', '3': 3, '4': 1, '5': 13, '9': 0, '10': 'opening', '17': true},
    {'1': 'mutual_close', '3': 4, '4': 1, '5': 13, '9': 1, '10': 'mutualClose', '17': true},
    {'1': 'unilateral_close', '3': 5, '4': 1, '5': 13, '9': 2, '10': 'unilateralClose', '17': true},
    {'1': 'delayed_to_us', '3': 6, '4': 1, '5': 13, '9': 3, '10': 'delayedToUs', '17': true},
    {'1': 'htlc_resolution', '3': 7, '4': 1, '5': 13, '9': 4, '10': 'htlcResolution', '17': true},
    {'1': 'penalty', '3': 8, '4': 1, '5': 13, '9': 5, '10': 'penalty', '17': true},
    {'1': 'estimates', '3': 9, '4': 3, '5': 11, '6': '.cln.FeeratesPerkbEstimates', '10': 'estimates'},
    {'1': 'floor', '3': 10, '4': 1, '5': 13, '9': 6, '10': 'floor', '17': true},
    {'1': 'unilateral_anchor_close', '3': 11, '4': 1, '5': 13, '9': 7, '10': 'unilateralAnchorClose', '17': true},
  ],
  '8': [
    {'1': '_opening'},
    {'1': '_mutual_close'},
    {'1': '_unilateral_close'},
    {'1': '_delayed_to_us'},
    {'1': '_htlc_resolution'},
    {'1': '_penalty'},
    {'1': '_floor'},
    {'1': '_unilateral_anchor_close'},
  ],
};

/// Descriptor for `FeeratesPerkb`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeratesPerkbDescriptor = $convert.base64Decode(
    'Cg1GZWVyYXRlc1BlcmtiEiUKDm1pbl9hY2NlcHRhYmxlGAEgASgNUg1taW5BY2NlcHRhYmxlEi'
    'UKDm1heF9hY2NlcHRhYmxlGAIgASgNUg1tYXhBY2NlcHRhYmxlEh0KB29wZW5pbmcYAyABKA1I'
    'AFIHb3BlbmluZ4gBARImCgxtdXR1YWxfY2xvc2UYBCABKA1IAVILbXV0dWFsQ2xvc2WIAQESLg'
    'oQdW5pbGF0ZXJhbF9jbG9zZRgFIAEoDUgCUg91bmlsYXRlcmFsQ2xvc2WIAQESJwoNZGVsYXll'
    'ZF90b191cxgGIAEoDUgDUgtkZWxheWVkVG9Vc4gBARIsCg9odGxjX3Jlc29sdXRpb24YByABKA'
    '1IBFIOaHRsY1Jlc29sdXRpb26IAQESHQoHcGVuYWx0eRgIIAEoDUgFUgdwZW5hbHR5iAEBEjkK'
    'CWVzdGltYXRlcxgJIAMoCzIbLmNsbi5GZWVyYXRlc1BlcmtiRXN0aW1hdGVzUgllc3RpbWF0ZX'
    'MSGQoFZmxvb3IYCiABKA1IBlIFZmxvb3KIAQESOwoXdW5pbGF0ZXJhbF9hbmNob3JfY2xvc2UY'
    'CyABKA1IB1IVdW5pbGF0ZXJhbEFuY2hvckNsb3NliAEBQgoKCF9vcGVuaW5nQg8KDV9tdXR1YW'
    'xfY2xvc2VCEwoRX3VuaWxhdGVyYWxfY2xvc2VCEAoOX2RlbGF5ZWRfdG9fdXNCEgoQX2h0bGNf'
    'cmVzb2x1dGlvbkIKCghfcGVuYWx0eUIICgZfZmxvb3JCGgoYX3VuaWxhdGVyYWxfYW5jaG9yX2'
    'Nsb3Nl');

@$core.Deprecated('Use feeratesPerkbEstimatesDescriptor instead')
const FeeratesPerkbEstimates$json = {
  '1': 'FeeratesPerkbEstimates',
  '2': [
    {'1': 'blockcount', '3': 1, '4': 1, '5': 13, '10': 'blockcount'},
    {'1': 'feerate', '3': 2, '4': 1, '5': 13, '10': 'feerate'},
    {'1': 'smoothed_feerate', '3': 3, '4': 1, '5': 13, '10': 'smoothedFeerate'},
  ],
};

/// Descriptor for `FeeratesPerkbEstimates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeratesPerkbEstimatesDescriptor = $convert.base64Decode(
    'ChZGZWVyYXRlc1BlcmtiRXN0aW1hdGVzEh4KCmJsb2NrY291bnQYASABKA1SCmJsb2NrY291bn'
    'QSGAoHZmVlcmF0ZRgCIAEoDVIHZmVlcmF0ZRIpChBzbW9vdGhlZF9mZWVyYXRlGAMgASgNUg9z'
    'bW9vdGhlZEZlZXJhdGU=');

@$core.Deprecated('Use feeratesPerkwDescriptor instead')
const FeeratesPerkw$json = {
  '1': 'FeeratesPerkw',
  '2': [
    {'1': 'min_acceptable', '3': 1, '4': 1, '5': 13, '10': 'minAcceptable'},
    {'1': 'max_acceptable', '3': 2, '4': 1, '5': 13, '10': 'maxAcceptable'},
    {'1': 'opening', '3': 3, '4': 1, '5': 13, '9': 0, '10': 'opening', '17': true},
    {'1': 'mutual_close', '3': 4, '4': 1, '5': 13, '9': 1, '10': 'mutualClose', '17': true},
    {'1': 'unilateral_close', '3': 5, '4': 1, '5': 13, '9': 2, '10': 'unilateralClose', '17': true},
    {'1': 'delayed_to_us', '3': 6, '4': 1, '5': 13, '9': 3, '10': 'delayedToUs', '17': true},
    {'1': 'htlc_resolution', '3': 7, '4': 1, '5': 13, '9': 4, '10': 'htlcResolution', '17': true},
    {'1': 'penalty', '3': 8, '4': 1, '5': 13, '9': 5, '10': 'penalty', '17': true},
    {'1': 'estimates', '3': 9, '4': 3, '5': 11, '6': '.cln.FeeratesPerkwEstimates', '10': 'estimates'},
    {'1': 'floor', '3': 10, '4': 1, '5': 13, '9': 6, '10': 'floor', '17': true},
    {'1': 'unilateral_anchor_close', '3': 11, '4': 1, '5': 13, '9': 7, '10': 'unilateralAnchorClose', '17': true},
  ],
  '8': [
    {'1': '_opening'},
    {'1': '_mutual_close'},
    {'1': '_unilateral_close'},
    {'1': '_delayed_to_us'},
    {'1': '_htlc_resolution'},
    {'1': '_penalty'},
    {'1': '_floor'},
    {'1': '_unilateral_anchor_close'},
  ],
};

/// Descriptor for `FeeratesPerkw`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeratesPerkwDescriptor = $convert.base64Decode(
    'Cg1GZWVyYXRlc1Blcmt3EiUKDm1pbl9hY2NlcHRhYmxlGAEgASgNUg1taW5BY2NlcHRhYmxlEi'
    'UKDm1heF9hY2NlcHRhYmxlGAIgASgNUg1tYXhBY2NlcHRhYmxlEh0KB29wZW5pbmcYAyABKA1I'
    'AFIHb3BlbmluZ4gBARImCgxtdXR1YWxfY2xvc2UYBCABKA1IAVILbXV0dWFsQ2xvc2WIAQESLg'
    'oQdW5pbGF0ZXJhbF9jbG9zZRgFIAEoDUgCUg91bmlsYXRlcmFsQ2xvc2WIAQESJwoNZGVsYXll'
    'ZF90b191cxgGIAEoDUgDUgtkZWxheWVkVG9Vc4gBARIsCg9odGxjX3Jlc29sdXRpb24YByABKA'
    '1IBFIOaHRsY1Jlc29sdXRpb26IAQESHQoHcGVuYWx0eRgIIAEoDUgFUgdwZW5hbHR5iAEBEjkK'
    'CWVzdGltYXRlcxgJIAMoCzIbLmNsbi5GZWVyYXRlc1Blcmt3RXN0aW1hdGVzUgllc3RpbWF0ZX'
    'MSGQoFZmxvb3IYCiABKA1IBlIFZmxvb3KIAQESOwoXdW5pbGF0ZXJhbF9hbmNob3JfY2xvc2UY'
    'CyABKA1IB1IVdW5pbGF0ZXJhbEFuY2hvckNsb3NliAEBQgoKCF9vcGVuaW5nQg8KDV9tdXR1YW'
    'xfY2xvc2VCEwoRX3VuaWxhdGVyYWxfY2xvc2VCEAoOX2RlbGF5ZWRfdG9fdXNCEgoQX2h0bGNf'
    'cmVzb2x1dGlvbkIKCghfcGVuYWx0eUIICgZfZmxvb3JCGgoYX3VuaWxhdGVyYWxfYW5jaG9yX2'
    'Nsb3Nl');

@$core.Deprecated('Use feeratesPerkwEstimatesDescriptor instead')
const FeeratesPerkwEstimates$json = {
  '1': 'FeeratesPerkwEstimates',
  '2': [
    {'1': 'blockcount', '3': 1, '4': 1, '5': 13, '10': 'blockcount'},
    {'1': 'feerate', '3': 2, '4': 1, '5': 13, '10': 'feerate'},
    {'1': 'smoothed_feerate', '3': 3, '4': 1, '5': 13, '10': 'smoothedFeerate'},
  ],
};

/// Descriptor for `FeeratesPerkwEstimates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeratesPerkwEstimatesDescriptor = $convert.base64Decode(
    'ChZGZWVyYXRlc1Blcmt3RXN0aW1hdGVzEh4KCmJsb2NrY291bnQYASABKA1SCmJsb2NrY291bn'
    'QSGAoHZmVlcmF0ZRgCIAEoDVIHZmVlcmF0ZRIpChBzbW9vdGhlZF9mZWVyYXRlGAMgASgNUg9z'
    'bW9vdGhlZEZlZXJhdGU=');

@$core.Deprecated('Use feeratesOnchain_fee_estimatesDescriptor instead')
const FeeratesOnchain_fee_estimates$json = {
  '1': 'FeeratesOnchain_fee_estimates',
  '2': [
    {'1': 'opening_channel_satoshis', '3': 1, '4': 1, '5': 4, '10': 'openingChannelSatoshis'},
    {'1': 'mutual_close_satoshis', '3': 2, '4': 1, '5': 4, '10': 'mutualCloseSatoshis'},
    {'1': 'unilateral_close_satoshis', '3': 3, '4': 1, '5': 4, '10': 'unilateralCloseSatoshis'},
    {'1': 'htlc_timeout_satoshis', '3': 4, '4': 1, '5': 4, '10': 'htlcTimeoutSatoshis'},
    {'1': 'htlc_success_satoshis', '3': 5, '4': 1, '5': 4, '10': 'htlcSuccessSatoshis'},
    {'1': 'unilateral_close_nonanchor_satoshis', '3': 6, '4': 1, '5': 4, '9': 0, '10': 'unilateralCloseNonanchorSatoshis', '17': true},
  ],
  '8': [
    {'1': '_unilateral_close_nonanchor_satoshis'},
  ],
};

/// Descriptor for `FeeratesOnchain_fee_estimates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeratesOnchain_fee_estimatesDescriptor = $convert.base64Decode(
    'Ch1GZWVyYXRlc09uY2hhaW5fZmVlX2VzdGltYXRlcxI4ChhvcGVuaW5nX2NoYW5uZWxfc2F0b3'
    'NoaXMYASABKARSFm9wZW5pbmdDaGFubmVsU2F0b3NoaXMSMgoVbXV0dWFsX2Nsb3NlX3NhdG9z'
    'aGlzGAIgASgEUhNtdXR1YWxDbG9zZVNhdG9zaGlzEjoKGXVuaWxhdGVyYWxfY2xvc2Vfc2F0b3'
    'NoaXMYAyABKARSF3VuaWxhdGVyYWxDbG9zZVNhdG9zaGlzEjIKFWh0bGNfdGltZW91dF9zYXRv'
    'c2hpcxgEIAEoBFITaHRsY1RpbWVvdXRTYXRvc2hpcxIyChVodGxjX3N1Y2Nlc3Nfc2F0b3NoaX'
    'MYBSABKARSE2h0bGNTdWNjZXNzU2F0b3NoaXMSUgojdW5pbGF0ZXJhbF9jbG9zZV9ub25hbmNo'
    'b3Jfc2F0b3NoaXMYBiABKARIAFIgdW5pbGF0ZXJhbENsb3NlTm9uYW5jaG9yU2F0b3NoaXOIAQ'
    'FCJgokX3VuaWxhdGVyYWxfY2xvc2Vfbm9uYW5jaG9yX3NhdG9zaGlz');

@$core.Deprecated('Use fetchinvoiceRequestDescriptor instead')
const FetchinvoiceRequest$json = {
  '1': 'FetchinvoiceRequest',
  '2': [
    {'1': 'offer', '3': 1, '4': 1, '5': 9, '10': 'offer'},
    {'1': 'amount_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'quantity', '3': 3, '4': 1, '5': 4, '9': 1, '10': 'quantity', '17': true},
    {'1': 'recurrence_counter', '3': 4, '4': 1, '5': 4, '9': 2, '10': 'recurrenceCounter', '17': true},
    {'1': 'recurrence_start', '3': 5, '4': 1, '5': 1, '9': 3, '10': 'recurrenceStart', '17': true},
    {'1': 'recurrence_label', '3': 6, '4': 1, '5': 9, '9': 4, '10': 'recurrenceLabel', '17': true},
    {'1': 'timeout', '3': 7, '4': 1, '5': 1, '9': 5, '10': 'timeout', '17': true},
    {'1': 'payer_note', '3': 8, '4': 1, '5': 9, '9': 6, '10': 'payerNote', '17': true},
  ],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_quantity'},
    {'1': '_recurrence_counter'},
    {'1': '_recurrence_start'},
    {'1': '_recurrence_label'},
    {'1': '_timeout'},
    {'1': '_payer_note'},
  ],
};

/// Descriptor for `FetchinvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchinvoiceRequestDescriptor = $convert.base64Decode(
    'ChNGZXRjaGludm9pY2VSZXF1ZXN0EhQKBW9mZmVyGAEgASgJUgVvZmZlchIxCgthbW91bnRfbX'
    'NhdBgCIAEoCzILLmNsbi5BbW91bnRIAFIKYW1vdW50TXNhdIgBARIfCghxdWFudGl0eRgDIAEo'
    'BEgBUghxdWFudGl0eYgBARIyChJyZWN1cnJlbmNlX2NvdW50ZXIYBCABKARIAlIRcmVjdXJyZW'
    '5jZUNvdW50ZXKIAQESLgoQcmVjdXJyZW5jZV9zdGFydBgFIAEoAUgDUg9yZWN1cnJlbmNlU3Rh'
    'cnSIAQESLgoQcmVjdXJyZW5jZV9sYWJlbBgGIAEoCUgEUg9yZWN1cnJlbmNlTGFiZWyIAQESHQ'
    'oHdGltZW91dBgHIAEoAUgFUgd0aW1lb3V0iAEBEiIKCnBheWVyX25vdGUYCCABKAlIBlIJcGF5'
    'ZXJOb3RliAEBQg4KDF9hbW91bnRfbXNhdEILCglfcXVhbnRpdHlCFQoTX3JlY3VycmVuY2VfY2'
    '91bnRlckITChFfcmVjdXJyZW5jZV9zdGFydEITChFfcmVjdXJyZW5jZV9sYWJlbEIKCghfdGlt'
    'ZW91dEINCgtfcGF5ZXJfbm90ZQ==');

@$core.Deprecated('Use fetchinvoiceResponseDescriptor instead')
const FetchinvoiceResponse$json = {
  '1': 'FetchinvoiceResponse',
  '2': [
    {'1': 'invoice', '3': 1, '4': 1, '5': 9, '10': 'invoice'},
    {'1': 'changes', '3': 2, '4': 1, '5': 11, '6': '.cln.FetchinvoiceChanges', '10': 'changes'},
    {'1': 'next_period', '3': 3, '4': 1, '5': 11, '6': '.cln.FetchinvoiceNext_period', '9': 0, '10': 'nextPeriod', '17': true},
  ],
  '8': [
    {'1': '_next_period'},
  ],
};

/// Descriptor for `FetchinvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchinvoiceResponseDescriptor = $convert.base64Decode(
    'ChRGZXRjaGludm9pY2VSZXNwb25zZRIYCgdpbnZvaWNlGAEgASgJUgdpbnZvaWNlEjIKB2NoYW'
    '5nZXMYAiABKAsyGC5jbG4uRmV0Y2hpbnZvaWNlQ2hhbmdlc1IHY2hhbmdlcxJCCgtuZXh0X3Bl'
    'cmlvZBgDIAEoCzIcLmNsbi5GZXRjaGludm9pY2VOZXh0X3BlcmlvZEgAUgpuZXh0UGVyaW9kiA'
    'EBQg4KDF9uZXh0X3BlcmlvZA==');

@$core.Deprecated('Use fetchinvoiceChangesDescriptor instead')
const FetchinvoiceChanges$json = {
  '1': 'FetchinvoiceChanges',
  '2': [
    {'1': 'description_appended', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'descriptionAppended', '17': true},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'vendor_removed', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'vendorRemoved', '17': true},
    {'1': 'vendor', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'vendor', '17': true},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'amountMsat', '17': true},
  ],
  '8': [
    {'1': '_description_appended'},
    {'1': '_description'},
    {'1': '_vendor_removed'},
    {'1': '_vendor'},
    {'1': '_amount_msat'},
  ],
};

/// Descriptor for `FetchinvoiceChanges`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchinvoiceChangesDescriptor = $convert.base64Decode(
    'ChNGZXRjaGludm9pY2VDaGFuZ2VzEjYKFGRlc2NyaXB0aW9uX2FwcGVuZGVkGAEgASgJSABSE2'
    'Rlc2NyaXB0aW9uQXBwZW5kZWSIAQESJQoLZGVzY3JpcHRpb24YAiABKAlIAVILZGVzY3JpcHRp'
    'b26IAQESKgoOdmVuZG9yX3JlbW92ZWQYAyABKAlIAlINdmVuZG9yUmVtb3ZlZIgBARIbCgZ2ZW'
    '5kb3IYBCABKAlIA1IGdmVuZG9yiAEBEjEKC2Ftb3VudF9tc2F0GAUgASgLMgsuY2xuLkFtb3Vu'
    'dEgEUgphbW91bnRNc2F0iAEBQhcKFV9kZXNjcmlwdGlvbl9hcHBlbmRlZEIOCgxfZGVzY3JpcH'
    'Rpb25CEQoPX3ZlbmRvcl9yZW1vdmVkQgkKB192ZW5kb3JCDgoMX2Ftb3VudF9tc2F0');

@$core.Deprecated('Use fetchinvoiceNext_periodDescriptor instead')
const FetchinvoiceNext_period$json = {
  '1': 'FetchinvoiceNext_period',
  '2': [
    {'1': 'counter', '3': 1, '4': 1, '5': 4, '10': 'counter'},
    {'1': 'starttime', '3': 2, '4': 1, '5': 4, '10': 'starttime'},
    {'1': 'endtime', '3': 3, '4': 1, '5': 4, '10': 'endtime'},
    {'1': 'paywindow_start', '3': 4, '4': 1, '5': 4, '10': 'paywindowStart'},
    {'1': 'paywindow_end', '3': 5, '4': 1, '5': 4, '10': 'paywindowEnd'},
  ],
};

/// Descriptor for `FetchinvoiceNext_period`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchinvoiceNext_periodDescriptor = $convert.base64Decode(
    'ChdGZXRjaGludm9pY2VOZXh0X3BlcmlvZBIYCgdjb3VudGVyGAEgASgEUgdjb3VudGVyEhwKCX'
    'N0YXJ0dGltZRgCIAEoBFIJc3RhcnR0aW1lEhgKB2VuZHRpbWUYAyABKARSB2VuZHRpbWUSJwoP'
    'cGF5d2luZG93X3N0YXJ0GAQgASgEUg5wYXl3aW5kb3dTdGFydBIjCg1wYXl3aW5kb3dfZW5kGA'
    'UgASgEUgxwYXl3aW5kb3dFbmQ=');

@$core.Deprecated('Use fundchannel_cancelRequestDescriptor instead')
const Fundchannel_cancelRequest$json = {
  '1': 'Fundchannel_cancelRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
  ],
};

/// Descriptor for `Fundchannel_cancelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannel_cancelRequestDescriptor = $convert.base64Decode(
    'ChlGdW5kY2hhbm5lbF9jYW5jZWxSZXF1ZXN0Eg4KAmlkGAEgASgMUgJpZA==');

@$core.Deprecated('Use fundchannel_cancelResponseDescriptor instead')
const Fundchannel_cancelResponse$json = {
  '1': 'Fundchannel_cancelResponse',
  '2': [
    {'1': 'cancelled', '3': 1, '4': 1, '5': 9, '10': 'cancelled'},
  ],
};

/// Descriptor for `Fundchannel_cancelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannel_cancelResponseDescriptor = $convert.base64Decode(
    'ChpGdW5kY2hhbm5lbF9jYW5jZWxSZXNwb25zZRIcCgljYW5jZWxsZWQYASABKAlSCWNhbmNlbG'
    'xlZA==');

@$core.Deprecated('Use fundchannel_completeRequestDescriptor instead')
const Fundchannel_completeRequest$json = {
  '1': 'Fundchannel_completeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'psbt', '3': 2, '4': 1, '5': 9, '10': 'psbt'},
  ],
};

/// Descriptor for `Fundchannel_completeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannel_completeRequestDescriptor = $convert.base64Decode(
    'ChtGdW5kY2hhbm5lbF9jb21wbGV0ZVJlcXVlc3QSDgoCaWQYASABKAxSAmlkEhIKBHBzYnQYAi'
    'ABKAlSBHBzYnQ=');

@$core.Deprecated('Use fundchannel_completeResponseDescriptor instead')
const Fundchannel_completeResponse$json = {
  '1': 'Fundchannel_completeResponse',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'commitments_secured', '3': 2, '4': 1, '5': 8, '10': 'commitmentsSecured'},
  ],
};

/// Descriptor for `Fundchannel_completeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannel_completeResponseDescriptor = $convert.base64Decode(
    'ChxGdW5kY2hhbm5lbF9jb21wbGV0ZVJlc3BvbnNlEh0KCmNoYW5uZWxfaWQYASABKAxSCWNoYW'
    '5uZWxJZBIvChNjb21taXRtZW50c19zZWN1cmVkGAIgASgIUhJjb21taXRtZW50c1NlY3VyZWQ=');

@$core.Deprecated('Use fundchannelRequestDescriptor instead')
const FundchannelRequest$json = {
  '1': 'FundchannelRequest',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 11, '6': '.cln.AmountOrAll', '10': 'amount'},
    {'1': 'feerate', '3': 2, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 0, '10': 'feerate', '17': true},
    {'1': 'announce', '3': 3, '4': 1, '5': 8, '9': 1, '10': 'announce', '17': true},
    {'1': 'push_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 2, '10': 'pushMsat', '17': true},
    {'1': 'close_to', '3': 6, '4': 1, '5': 9, '9': 3, '10': 'closeTo', '17': true},
    {'1': 'request_amt', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'requestAmt', '17': true},
    {'1': 'compact_lease', '3': 8, '4': 1, '5': 9, '9': 5, '10': 'compactLease', '17': true},
    {'1': 'id', '3': 9, '4': 1, '5': 12, '10': 'id'},
    {'1': 'minconf', '3': 10, '4': 1, '5': 13, '9': 6, '10': 'minconf', '17': true},
    {'1': 'utxos', '3': 11, '4': 3, '5': 11, '6': '.cln.Outpoint', '10': 'utxos'},
    {'1': 'mindepth', '3': 12, '4': 1, '5': 13, '9': 7, '10': 'mindepth', '17': true},
    {'1': 'reserve', '3': 13, '4': 1, '5': 11, '6': '.cln.Amount', '9': 8, '10': 'reserve', '17': true},
    {'1': 'channel_type', '3': 14, '4': 3, '5': 13, '10': 'channelType'},
  ],
  '8': [
    {'1': '_feerate'},
    {'1': '_announce'},
    {'1': '_push_msat'},
    {'1': '_close_to'},
    {'1': '_request_amt'},
    {'1': '_compact_lease'},
    {'1': '_minconf'},
    {'1': '_mindepth'},
    {'1': '_reserve'},
  ],
};

/// Descriptor for `FundchannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannelRequestDescriptor = $convert.base64Decode(
    'ChJGdW5kY2hhbm5lbFJlcXVlc3QSKAoGYW1vdW50GAEgASgLMhAuY2xuLkFtb3VudE9yQWxsUg'
    'ZhbW91bnQSKwoHZmVlcmF0ZRgCIAEoCzIMLmNsbi5GZWVyYXRlSABSB2ZlZXJhdGWIAQESHwoI'
    'YW5ub3VuY2UYAyABKAhIAVIIYW5ub3VuY2WIAQESLQoJcHVzaF9tc2F0GAUgASgLMgsuY2xuLk'
    'Ftb3VudEgCUghwdXNoTXNhdIgBARIeCghjbG9zZV90bxgGIAEoCUgDUgdjbG9zZVRviAEBEjEK'
    'C3JlcXVlc3RfYW10GAcgASgLMgsuY2xuLkFtb3VudEgEUgpyZXF1ZXN0QW10iAEBEigKDWNvbX'
    'BhY3RfbGVhc2UYCCABKAlIBVIMY29tcGFjdExlYXNliAEBEg4KAmlkGAkgASgMUgJpZBIdCgdt'
    'aW5jb25mGAogASgNSAZSB21pbmNvbmaIAQESIwoFdXR4b3MYCyADKAsyDS5jbG4uT3V0cG9pbn'
    'RSBXV0eG9zEh8KCG1pbmRlcHRoGAwgASgNSAdSCG1pbmRlcHRoiAEBEioKB3Jlc2VydmUYDSAB'
    'KAsyCy5jbG4uQW1vdW50SAhSB3Jlc2VydmWIAQESIQoMY2hhbm5lbF90eXBlGA4gAygNUgtjaG'
    'FubmVsVHlwZUIKCghfZmVlcmF0ZUILCglfYW5ub3VuY2VCDAoKX3B1c2hfbXNhdEILCglfY2xv'
    'c2VfdG9CDgoMX3JlcXVlc3RfYW10QhAKDl9jb21wYWN0X2xlYXNlQgoKCF9taW5jb25mQgsKCV'
    '9taW5kZXB0aEIKCghfcmVzZXJ2ZQ==');

@$core.Deprecated('Use fundchannelResponseDescriptor instead')
const FundchannelResponse$json = {
  '1': 'FundchannelResponse',
  '2': [
    {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
    {'1': 'txid', '3': 2, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'outnum', '3': 3, '4': 1, '5': 13, '10': 'outnum'},
    {'1': 'channel_id', '3': 4, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'close_to', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'closeTo', '17': true},
    {'1': 'mindepth', '3': 6, '4': 1, '5': 13, '9': 1, '10': 'mindepth', '17': true},
    {'1': 'channel_type', '3': 7, '4': 1, '5': 11, '6': '.cln.FundchannelChannel_type', '9': 2, '10': 'channelType', '17': true},
  ],
  '8': [
    {'1': '_close_to'},
    {'1': '_mindepth'},
    {'1': '_channel_type'},
  ],
};

/// Descriptor for `FundchannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannelResponseDescriptor = $convert.base64Decode(
    'ChNGdW5kY2hhbm5lbFJlc3BvbnNlEg4KAnR4GAEgASgMUgJ0eBISCgR0eGlkGAIgASgMUgR0eG'
    'lkEhYKBm91dG51bRgDIAEoDVIGb3V0bnVtEh0KCmNoYW5uZWxfaWQYBCABKAxSCWNoYW5uZWxJ'
    'ZBIeCghjbG9zZV90bxgFIAEoDEgAUgdjbG9zZVRviAEBEh8KCG1pbmRlcHRoGAYgASgNSAFSCG'
    '1pbmRlcHRoiAEBEkQKDGNoYW5uZWxfdHlwZRgHIAEoCzIcLmNsbi5GdW5kY2hhbm5lbENoYW5u'
    'ZWxfdHlwZUgCUgtjaGFubmVsVHlwZYgBAUILCglfY2xvc2VfdG9CCwoJX21pbmRlcHRoQg8KDV'
    '9jaGFubmVsX3R5cGU=');

@$core.Deprecated('Use fundchannelChannel_typeDescriptor instead')
const FundchannelChannel_type$json = {
  '1': 'FundchannelChannel_type',
  '2': [
    {'1': 'bits', '3': 1, '4': 3, '5': 13, '10': 'bits'},
    {'1': 'names', '3': 2, '4': 3, '5': 14, '6': '.cln.ChannelTypeName', '10': 'names'},
  ],
};

/// Descriptor for `FundchannelChannel_type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannelChannel_typeDescriptor = $convert.base64Decode(
    'ChdGdW5kY2hhbm5lbENoYW5uZWxfdHlwZRISCgRiaXRzGAEgAygNUgRiaXRzEioKBW5hbWVzGA'
    'IgAygOMhQuY2xuLkNoYW5uZWxUeXBlTmFtZVIFbmFtZXM=');

@$core.Deprecated('Use fundchannel_startRequestDescriptor instead')
const Fundchannel_startRequest$json = {
  '1': 'Fundchannel_startRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'amount', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amount'},
    {'1': 'feerate', '3': 3, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 0, '10': 'feerate', '17': true},
    {'1': 'announce', '3': 4, '4': 1, '5': 8, '9': 1, '10': 'announce', '17': true},
    {'1': 'close_to', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'closeTo', '17': true},
    {'1': 'push_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '9': 3, '10': 'pushMsat', '17': true},
    {'1': 'mindepth', '3': 7, '4': 1, '5': 13, '9': 4, '10': 'mindepth', '17': true},
    {'1': 'reserve', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '9': 5, '10': 'reserve', '17': true},
    {'1': 'channel_type', '3': 9, '4': 3, '5': 13, '10': 'channelType'},
  ],
  '8': [
    {'1': '_feerate'},
    {'1': '_announce'},
    {'1': '_close_to'},
    {'1': '_push_msat'},
    {'1': '_mindepth'},
    {'1': '_reserve'},
  ],
};

/// Descriptor for `Fundchannel_startRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannel_startRequestDescriptor = $convert.base64Decode(
    'ChhGdW5kY2hhbm5lbF9zdGFydFJlcXVlc3QSDgoCaWQYASABKAxSAmlkEiMKBmFtb3VudBgCIA'
    'EoCzILLmNsbi5BbW91bnRSBmFtb3VudBIrCgdmZWVyYXRlGAMgASgLMgwuY2xuLkZlZXJhdGVI'
    'AFIHZmVlcmF0ZYgBARIfCghhbm5vdW5jZRgEIAEoCEgBUghhbm5vdW5jZYgBARIeCghjbG9zZV'
    '90bxgFIAEoCUgCUgdjbG9zZVRviAEBEi0KCXB1c2hfbXNhdBgGIAEoCzILLmNsbi5BbW91bnRI'
    'A1IIcHVzaE1zYXSIAQESHwoIbWluZGVwdGgYByABKA1IBFIIbWluZGVwdGiIAQESKgoHcmVzZX'
    'J2ZRgIIAEoCzILLmNsbi5BbW91bnRIBVIHcmVzZXJ2ZYgBARIhCgxjaGFubmVsX3R5cGUYCSAD'
    'KA1SC2NoYW5uZWxUeXBlQgoKCF9mZWVyYXRlQgsKCV9hbm5vdW5jZUILCglfY2xvc2VfdG9CDA'
    'oKX3B1c2hfbXNhdEILCglfbWluZGVwdGhCCgoIX3Jlc2VydmU=');

@$core.Deprecated('Use fundchannel_startResponseDescriptor instead')
const Fundchannel_startResponse$json = {
  '1': 'Fundchannel_startResponse',
  '2': [
    {'1': 'funding_address', '3': 1, '4': 1, '5': 9, '10': 'fundingAddress'},
    {'1': 'scriptpubkey', '3': 2, '4': 1, '5': 12, '10': 'scriptpubkey'},
    {'1': 'channel_type', '3': 3, '4': 1, '5': 11, '6': '.cln.Fundchannel_startChannel_type', '9': 0, '10': 'channelType', '17': true},
    {'1': 'close_to', '3': 4, '4': 1, '5': 12, '9': 1, '10': 'closeTo', '17': true},
    {'1': 'warning_usage', '3': 5, '4': 1, '5': 9, '10': 'warningUsage'},
    {'1': 'mindepth', '3': 6, '4': 1, '5': 13, '9': 2, '10': 'mindepth', '17': true},
  ],
  '8': [
    {'1': '_channel_type'},
    {'1': '_close_to'},
    {'1': '_mindepth'},
  ],
};

/// Descriptor for `Fundchannel_startResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannel_startResponseDescriptor = $convert.base64Decode(
    'ChlGdW5kY2hhbm5lbF9zdGFydFJlc3BvbnNlEicKD2Z1bmRpbmdfYWRkcmVzcxgBIAEoCVIOZn'
    'VuZGluZ0FkZHJlc3MSIgoMc2NyaXB0cHVia2V5GAIgASgMUgxzY3JpcHRwdWJrZXkSSgoMY2hh'
    'bm5lbF90eXBlGAMgASgLMiIuY2xuLkZ1bmRjaGFubmVsX3N0YXJ0Q2hhbm5lbF90eXBlSABSC2'
    'NoYW5uZWxUeXBliAEBEh4KCGNsb3NlX3RvGAQgASgMSAFSB2Nsb3NlVG+IAQESIwoNd2Fybmlu'
    'Z191c2FnZRgFIAEoCVIMd2FybmluZ1VzYWdlEh8KCG1pbmRlcHRoGAYgASgNSAJSCG1pbmRlcH'
    'RoiAEBQg8KDV9jaGFubmVsX3R5cGVCCwoJX2Nsb3NlX3RvQgsKCV9taW5kZXB0aA==');

@$core.Deprecated('Use fundchannel_startChannel_typeDescriptor instead')
const Fundchannel_startChannel_type$json = {
  '1': 'Fundchannel_startChannel_type',
  '2': [
    {'1': 'bits', '3': 1, '4': 3, '5': 13, '10': 'bits'},
    {'1': 'names', '3': 2, '4': 3, '5': 14, '6': '.cln.ChannelTypeName', '10': 'names'},
  ],
};

/// Descriptor for `Fundchannel_startChannel_type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundchannel_startChannel_typeDescriptor = $convert.base64Decode(
    'Ch1GdW5kY2hhbm5lbF9zdGFydENoYW5uZWxfdHlwZRISCgRiaXRzGAEgAygNUgRiaXRzEioKBW'
    '5hbWVzGAIgAygOMhQuY2xuLkNoYW5uZWxUeXBlTmFtZVIFbmFtZXM=');

@$core.Deprecated('Use getlogRequestDescriptor instead')
const GetlogRequest$json = {
  '1': 'GetlogRequest',
  '2': [
    {'1': 'level', '3': 1, '4': 1, '5': 14, '6': '.cln.GetlogRequest.GetlogLevel', '9': 0, '10': 'level', '17': true},
  ],
  '4': [GetlogRequest_GetlogLevel$json],
  '8': [
    {'1': '_level'},
  ],
};

@$core.Deprecated('Use getlogRequestDescriptor instead')
const GetlogRequest_GetlogLevel$json = {
  '1': 'GetlogLevel',
  '2': [
    {'1': 'BROKEN', '2': 0},
    {'1': 'UNUSUAL', '2': 1},
    {'1': 'INFO', '2': 2},
    {'1': 'DEBUG', '2': 3},
    {'1': 'IO', '2': 4},
    {'1': 'TRACE', '2': 5},
  ],
};

/// Descriptor for `GetlogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getlogRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRsb2dSZXF1ZXN0EjkKBWxldmVsGAEgASgOMh4uY2xuLkdldGxvZ1JlcXVlc3QuR2V0bG'
    '9nTGV2ZWxIAFIFbGV2ZWyIAQEiTgoLR2V0bG9nTGV2ZWwSCgoGQlJPS0VOEAASCwoHVU5VU1VB'
    'TBABEggKBElORk8QAhIJCgVERUJVRxADEgYKAklPEAQSCQoFVFJBQ0UQBUIICgZfbGV2ZWw=');

@$core.Deprecated('Use getlogResponseDescriptor instead')
const GetlogResponse$json = {
  '1': 'GetlogResponse',
  '2': [
    {'1': 'created_at', '3': 1, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'bytes_used', '3': 2, '4': 1, '5': 13, '10': 'bytesUsed'},
    {'1': 'bytes_max', '3': 3, '4': 1, '5': 13, '10': 'bytesMax'},
    {'1': 'log', '3': 4, '4': 3, '5': 11, '6': '.cln.GetlogLog', '10': 'log'},
  ],
};

/// Descriptor for `GetlogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getlogResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRsb2dSZXNwb25zZRIdCgpjcmVhdGVkX2F0GAEgASgJUgljcmVhdGVkQXQSHQoKYnl0ZX'
    'NfdXNlZBgCIAEoDVIJYnl0ZXNVc2VkEhsKCWJ5dGVzX21heBgDIAEoDVIIYnl0ZXNNYXgSIAoD'
    'bG9nGAQgAygLMg4uY2xuLkdldGxvZ0xvZ1IDbG9n');

@$core.Deprecated('Use getlogLogDescriptor instead')
const GetlogLog$json = {
  '1': 'GetlogLog',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.GetlogLog.GetlogLogType', '10': 'itemType'},
    {'1': 'num_skipped', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'numSkipped', '17': true},
    {'1': 'time', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'time', '17': true},
    {'1': 'source', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'source', '17': true},
    {'1': 'log', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'log', '17': true},
    {'1': 'node_id', '3': 6, '4': 1, '5': 12, '9': 4, '10': 'nodeId', '17': true},
    {'1': 'data', '3': 7, '4': 1, '5': 12, '9': 5, '10': 'data', '17': true},
  ],
  '4': [GetlogLog_GetlogLogType$json],
  '8': [
    {'1': '_num_skipped'},
    {'1': '_time'},
    {'1': '_source'},
    {'1': '_log'},
    {'1': '_node_id'},
    {'1': '_data'},
  ],
};

@$core.Deprecated('Use getlogLogDescriptor instead')
const GetlogLog_GetlogLogType$json = {
  '1': 'GetlogLogType',
  '2': [
    {'1': 'SKIPPED', '2': 0},
    {'1': 'BROKEN', '2': 1},
    {'1': 'UNUSUAL', '2': 2},
    {'1': 'INFO', '2': 3},
    {'1': 'DEBUG', '2': 4},
    {'1': 'IO_IN', '2': 5},
    {'1': 'IO_OUT', '2': 6},
    {'1': 'TRACE', '2': 7},
  ],
};

/// Descriptor for `GetlogLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getlogLogDescriptor = $convert.base64Decode(
    'CglHZXRsb2dMb2cSOQoJaXRlbV90eXBlGAEgASgOMhwuY2xuLkdldGxvZ0xvZy5HZXRsb2dMb2'
    'dUeXBlUghpdGVtVHlwZRIkCgtudW1fc2tpcHBlZBgCIAEoDUgAUgpudW1Ta2lwcGVkiAEBEhcK'
    'BHRpbWUYAyABKAlIAVIEdGltZYgBARIbCgZzb3VyY2UYBCABKAlIAlIGc291cmNliAEBEhUKA2'
    'xvZxgFIAEoCUgDUgNsb2eIAQESHAoHbm9kZV9pZBgGIAEoDEgEUgZub2RlSWSIAQESFwoEZGF0'
    'YRgHIAEoDEgFUgRkYXRhiAEBImwKDUdldGxvZ0xvZ1R5cGUSCwoHU0tJUFBFRBAAEgoKBkJST0'
    'tFThABEgsKB1VOVVNVQUwQAhIICgRJTkZPEAMSCQoFREVCVUcQBBIJCgVJT19JThAFEgoKBklP'
    'X09VVBAGEgkKBVRSQUNFEAdCDgoMX251bV9za2lwcGVkQgcKBV90aW1lQgkKB19zb3VyY2VCBg'
    'oEX2xvZ0IKCghfbm9kZV9pZEIHCgVfZGF0YQ==');

@$core.Deprecated('Use funderupdateRequestDescriptor instead')
const FunderupdateRequest$json = {
  '1': 'FunderupdateRequest',
  '2': [
    {'1': 'policy', '3': 1, '4': 1, '5': 14, '6': '.cln.FunderupdateRequest.FunderupdatePolicy', '9': 0, '10': 'policy', '17': true},
    {'1': 'policy_mod', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'policyMod', '17': true},
    {'1': 'leases_only', '3': 3, '4': 1, '5': 8, '9': 2, '10': 'leasesOnly', '17': true},
    {'1': 'min_their_funding_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '9': 3, '10': 'minTheirFundingMsat', '17': true},
    {'1': 'max_their_funding_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'maxTheirFundingMsat', '17': true},
    {'1': 'per_channel_min_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '9': 5, '10': 'perChannelMinMsat', '17': true},
    {'1': 'per_channel_max_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '9': 6, '10': 'perChannelMaxMsat', '17': true},
    {'1': 'reserve_tank_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '9': 7, '10': 'reserveTankMsat', '17': true},
    {'1': 'fuzz_percent', '3': 9, '4': 1, '5': 13, '9': 8, '10': 'fuzzPercent', '17': true},
    {'1': 'fund_probability', '3': 10, '4': 1, '5': 13, '9': 9, '10': 'fundProbability', '17': true},
    {'1': 'lease_fee_base_msat', '3': 11, '4': 1, '5': 11, '6': '.cln.Amount', '9': 10, '10': 'leaseFeeBaseMsat', '17': true},
    {'1': 'lease_fee_basis', '3': 12, '4': 1, '5': 13, '9': 11, '10': 'leaseFeeBasis', '17': true},
    {'1': 'funding_weight', '3': 13, '4': 1, '5': 13, '9': 12, '10': 'fundingWeight', '17': true},
    {'1': 'channel_fee_max_base_msat', '3': 14, '4': 1, '5': 11, '6': '.cln.Amount', '9': 13, '10': 'channelFeeMaxBaseMsat', '17': true},
    {'1': 'channel_fee_max_proportional_thousandths', '3': 15, '4': 1, '5': 13, '9': 14, '10': 'channelFeeMaxProportionalThousandths', '17': true},
    {'1': 'compact_lease', '3': 16, '4': 1, '5': 12, '9': 15, '10': 'compactLease', '17': true},
  ],
  '4': [FunderupdateRequest_FunderupdatePolicy$json],
  '8': [
    {'1': '_policy'},
    {'1': '_policy_mod'},
    {'1': '_leases_only'},
    {'1': '_min_their_funding_msat'},
    {'1': '_max_their_funding_msat'},
    {'1': '_per_channel_min_msat'},
    {'1': '_per_channel_max_msat'},
    {'1': '_reserve_tank_msat'},
    {'1': '_fuzz_percent'},
    {'1': '_fund_probability'},
    {'1': '_lease_fee_base_msat'},
    {'1': '_lease_fee_basis'},
    {'1': '_funding_weight'},
    {'1': '_channel_fee_max_base_msat'},
    {'1': '_channel_fee_max_proportional_thousandths'},
    {'1': '_compact_lease'},
  ],
};

@$core.Deprecated('Use funderupdateRequestDescriptor instead')
const FunderupdateRequest_FunderupdatePolicy$json = {
  '1': 'FunderupdatePolicy',
  '2': [
    {'1': 'MATCH', '2': 0},
    {'1': 'AVAILABLE', '2': 1},
    {'1': 'FIXED', '2': 2},
  ],
};

/// Descriptor for `FunderupdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List funderupdateRequestDescriptor = $convert.base64Decode(
    'ChNGdW5kZXJ1cGRhdGVSZXF1ZXN0EkgKBnBvbGljeRgBIAEoDjIrLmNsbi5GdW5kZXJ1cGRhdG'
    'VSZXF1ZXN0LkZ1bmRlcnVwZGF0ZVBvbGljeUgAUgZwb2xpY3mIAQESLwoKcG9saWN5X21vZBgC'
    'IAEoCzILLmNsbi5BbW91bnRIAVIJcG9saWN5TW9kiAEBEiQKC2xlYXNlc19vbmx5GAMgASgISA'
    'JSCmxlYXNlc09ubHmIAQESRQoWbWluX3RoZWlyX2Z1bmRpbmdfbXNhdBgEIAEoCzILLmNsbi5B'
    'bW91bnRIA1ITbWluVGhlaXJGdW5kaW5nTXNhdIgBARJFChZtYXhfdGhlaXJfZnVuZGluZ19tc2'
    'F0GAUgASgLMgsuY2xuLkFtb3VudEgEUhNtYXhUaGVpckZ1bmRpbmdNc2F0iAEBEkEKFHBlcl9j'
    'aGFubmVsX21pbl9tc2F0GAYgASgLMgsuY2xuLkFtb3VudEgFUhFwZXJDaGFubmVsTWluTXNhdI'
    'gBARJBChRwZXJfY2hhbm5lbF9tYXhfbXNhdBgHIAEoCzILLmNsbi5BbW91bnRIBlIRcGVyQ2hh'
    'bm5lbE1heE1zYXSIAQESPAoRcmVzZXJ2ZV90YW5rX21zYXQYCCABKAsyCy5jbG4uQW1vdW50SA'
    'dSD3Jlc2VydmVUYW5rTXNhdIgBARImCgxmdXp6X3BlcmNlbnQYCSABKA1ICFILZnV6elBlcmNl'
    'bnSIAQESLgoQZnVuZF9wcm9iYWJpbGl0eRgKIAEoDUgJUg9mdW5kUHJvYmFiaWxpdHmIAQESPw'
    'oTbGVhc2VfZmVlX2Jhc2VfbXNhdBgLIAEoCzILLmNsbi5BbW91bnRIClIQbGVhc2VGZWVCYXNl'
    'TXNhdIgBARIrCg9sZWFzZV9mZWVfYmFzaXMYDCABKA1IC1INbGVhc2VGZWVCYXNpc4gBARIqCg'
    '5mdW5kaW5nX3dlaWdodBgNIAEoDUgMUg1mdW5kaW5nV2VpZ2h0iAEBEkoKGWNoYW5uZWxfZmVl'
    'X21heF9iYXNlX21zYXQYDiABKAsyCy5jbG4uQW1vdW50SA1SFWNoYW5uZWxGZWVNYXhCYXNlTX'
    'NhdIgBARJbCihjaGFubmVsX2ZlZV9tYXhfcHJvcG9ydGlvbmFsX3Rob3VzYW5kdGhzGA8gASgN'
    'SA5SJGNoYW5uZWxGZWVNYXhQcm9wb3J0aW9uYWxUaG91c2FuZHRoc4gBARIoCg1jb21wYWN0X2'
    'xlYXNlGBAgASgMSA9SDGNvbXBhY3RMZWFzZYgBASI5ChJGdW5kZXJ1cGRhdGVQb2xpY3kSCQoF'
    'TUFUQ0gQABINCglBVkFJTEFCTEUQARIJCgVGSVhFRBACQgkKB19wb2xpY3lCDQoLX3BvbGljeV'
    '9tb2RCDgoMX2xlYXNlc19vbmx5QhkKF19taW5fdGhlaXJfZnVuZGluZ19tc2F0QhkKF19tYXhf'
    'dGhlaXJfZnVuZGluZ19tc2F0QhcKFV9wZXJfY2hhbm5lbF9taW5fbXNhdEIXChVfcGVyX2NoYW'
    '5uZWxfbWF4X21zYXRCFAoSX3Jlc2VydmVfdGFua19tc2F0Qg8KDV9mdXp6X3BlcmNlbnRCEwoR'
    'X2Z1bmRfcHJvYmFiaWxpdHlCFgoUX2xlYXNlX2ZlZV9iYXNlX21zYXRCEgoQX2xlYXNlX2ZlZV'
    '9iYXNpc0IRCg9fZnVuZGluZ193ZWlnaHRCHAoaX2NoYW5uZWxfZmVlX21heF9iYXNlX21zYXRC'
    'KwopX2NoYW5uZWxfZmVlX21heF9wcm9wb3J0aW9uYWxfdGhvdXNhbmR0aHNCEAoOX2NvbXBhY3'
    'RfbGVhc2U=');

@$core.Deprecated('Use funderupdateResponseDescriptor instead')
const FunderupdateResponse$json = {
  '1': 'FunderupdateResponse',
  '2': [
    {'1': 'summary', '3': 1, '4': 1, '5': 9, '10': 'summary'},
    {'1': 'policy', '3': 2, '4': 1, '5': 14, '6': '.cln.FunderupdateResponse.FunderupdatePolicy', '10': 'policy'},
    {'1': 'policy_mod', '3': 3, '4': 1, '5': 13, '10': 'policyMod'},
    {'1': 'leases_only', '3': 4, '4': 1, '5': 8, '10': 'leasesOnly'},
    {'1': 'min_their_funding_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'minTheirFundingMsat'},
    {'1': 'max_their_funding_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'maxTheirFundingMsat'},
    {'1': 'per_channel_min_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'perChannelMinMsat'},
    {'1': 'per_channel_max_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'perChannelMaxMsat'},
    {'1': 'reserve_tank_msat', '3': 9, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'reserveTankMsat'},
    {'1': 'fuzz_percent', '3': 10, '4': 1, '5': 13, '10': 'fuzzPercent'},
    {'1': 'fund_probability', '3': 11, '4': 1, '5': 13, '10': 'fundProbability'},
    {'1': 'lease_fee_base_msat', '3': 12, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'leaseFeeBaseMsat', '17': true},
    {'1': 'lease_fee_basis', '3': 13, '4': 1, '5': 13, '9': 1, '10': 'leaseFeeBasis', '17': true},
    {'1': 'funding_weight', '3': 14, '4': 1, '5': 13, '9': 2, '10': 'fundingWeight', '17': true},
    {'1': 'channel_fee_max_base_msat', '3': 15, '4': 1, '5': 11, '6': '.cln.Amount', '9': 3, '10': 'channelFeeMaxBaseMsat', '17': true},
    {'1': 'channel_fee_max_proportional_thousandths', '3': 16, '4': 1, '5': 13, '9': 4, '10': 'channelFeeMaxProportionalThousandths', '17': true},
    {'1': 'compact_lease', '3': 17, '4': 1, '5': 12, '9': 5, '10': 'compactLease', '17': true},
  ],
  '4': [FunderupdateResponse_FunderupdatePolicy$json],
  '8': [
    {'1': '_lease_fee_base_msat'},
    {'1': '_lease_fee_basis'},
    {'1': '_funding_weight'},
    {'1': '_channel_fee_max_base_msat'},
    {'1': '_channel_fee_max_proportional_thousandths'},
    {'1': '_compact_lease'},
  ],
};

@$core.Deprecated('Use funderupdateResponseDescriptor instead')
const FunderupdateResponse_FunderupdatePolicy$json = {
  '1': 'FunderupdatePolicy',
  '2': [
    {'1': 'MATCH', '2': 0},
    {'1': 'AVAILABLE', '2': 1},
    {'1': 'FIXED', '2': 2},
  ],
};

/// Descriptor for `FunderupdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List funderupdateResponseDescriptor = $convert.base64Decode(
    'ChRGdW5kZXJ1cGRhdGVSZXNwb25zZRIYCgdzdW1tYXJ5GAEgASgJUgdzdW1tYXJ5EkQKBnBvbG'
    'ljeRgCIAEoDjIsLmNsbi5GdW5kZXJ1cGRhdGVSZXNwb25zZS5GdW5kZXJ1cGRhdGVQb2xpY3lS'
    'BnBvbGljeRIdCgpwb2xpY3lfbW9kGAMgASgNUglwb2xpY3lNb2QSHwoLbGVhc2VzX29ubHkYBC'
    'ABKAhSCmxlYXNlc09ubHkSQAoWbWluX3RoZWlyX2Z1bmRpbmdfbXNhdBgFIAEoCzILLmNsbi5B'
    'bW91bnRSE21pblRoZWlyRnVuZGluZ01zYXQSQAoWbWF4X3RoZWlyX2Z1bmRpbmdfbXNhdBgGIA'
    'EoCzILLmNsbi5BbW91bnRSE21heFRoZWlyRnVuZGluZ01zYXQSPAoUcGVyX2NoYW5uZWxfbWlu'
    'X21zYXQYByABKAsyCy5jbG4uQW1vdW50UhFwZXJDaGFubmVsTWluTXNhdBI8ChRwZXJfY2hhbm'
    '5lbF9tYXhfbXNhdBgIIAEoCzILLmNsbi5BbW91bnRSEXBlckNoYW5uZWxNYXhNc2F0EjcKEXJl'
    'c2VydmVfdGFua19tc2F0GAkgASgLMgsuY2xuLkFtb3VudFIPcmVzZXJ2ZVRhbmtNc2F0EiEKDG'
    'Z1enpfcGVyY2VudBgKIAEoDVILZnV6elBlcmNlbnQSKQoQZnVuZF9wcm9iYWJpbGl0eRgLIAEo'
    'DVIPZnVuZFByb2JhYmlsaXR5Ej8KE2xlYXNlX2ZlZV9iYXNlX21zYXQYDCABKAsyCy5jbG4uQW'
    '1vdW50SABSEGxlYXNlRmVlQmFzZU1zYXSIAQESKwoPbGVhc2VfZmVlX2Jhc2lzGA0gASgNSAFS'
    'DWxlYXNlRmVlQmFzaXOIAQESKgoOZnVuZGluZ193ZWlnaHQYDiABKA1IAlINZnVuZGluZ1dlaW'
    'dodIgBARJKChljaGFubmVsX2ZlZV9tYXhfYmFzZV9tc2F0GA8gASgLMgsuY2xuLkFtb3VudEgD'
    'UhVjaGFubmVsRmVlTWF4QmFzZU1zYXSIAQESWwooY2hhbm5lbF9mZWVfbWF4X3Byb3BvcnRpb2'
    '5hbF90aG91c2FuZHRocxgQIAEoDUgEUiRjaGFubmVsRmVlTWF4UHJvcG9ydGlvbmFsVGhvdXNh'
    'bmR0aHOIAQESKAoNY29tcGFjdF9sZWFzZRgRIAEoDEgFUgxjb21wYWN0TGVhc2WIAQEiOQoSRn'
    'VuZGVydXBkYXRlUG9saWN5EgkKBU1BVENIEAASDQoJQVZBSUxBQkxFEAESCQoFRklYRUQQAkIW'
    'ChRfbGVhc2VfZmVlX2Jhc2VfbXNhdEISChBfbGVhc2VfZmVlX2Jhc2lzQhEKD19mdW5kaW5nX3'
    'dlaWdodEIcChpfY2hhbm5lbF9mZWVfbWF4X2Jhc2VfbXNhdEIrCilfY2hhbm5lbF9mZWVfbWF4'
    'X3Byb3BvcnRpb25hbF90aG91c2FuZHRoc0IQCg5fY29tcGFjdF9sZWFzZQ==');

@$core.Deprecated('Use getrouteRequestDescriptor instead')
const GetrouteRequest$json = {
  '1': 'GetrouteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'riskfactor', '3': 3, '4': 1, '5': 4, '10': 'riskfactor'},
    {'1': 'cltv', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'cltv', '17': true},
    {'1': 'fromid', '3': 5, '4': 1, '5': 12, '9': 1, '10': 'fromid', '17': true},
    {'1': 'fuzzpercent', '3': 6, '4': 1, '5': 13, '9': 2, '10': 'fuzzpercent', '17': true},
    {'1': 'exclude', '3': 7, '4': 3, '5': 9, '10': 'exclude'},
    {'1': 'maxhops', '3': 8, '4': 1, '5': 13, '9': 3, '10': 'maxhops', '17': true},
    {'1': 'amount_msat', '3': 9, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
  ],
  '8': [
    {'1': '_cltv'},
    {'1': '_fromid'},
    {'1': '_fuzzpercent'},
    {'1': '_maxhops'},
  ],
};

/// Descriptor for `GetrouteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getrouteRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRyb3V0ZVJlcXVlc3QSDgoCaWQYASABKAxSAmlkEh4KCnJpc2tmYWN0b3IYAyABKARSCn'
    'Jpc2tmYWN0b3ISFwoEY2x0dhgEIAEoDUgAUgRjbHR2iAEBEhsKBmZyb21pZBgFIAEoDEgBUgZm'
    'cm9taWSIAQESJQoLZnV6enBlcmNlbnQYBiABKA1IAlILZnV6enBlcmNlbnSIAQESGAoHZXhjbH'
    'VkZRgHIAMoCVIHZXhjbHVkZRIdCgdtYXhob3BzGAggASgNSANSB21heGhvcHOIAQESLAoLYW1v'
    'dW50X21zYXQYCSABKAsyCy5jbG4uQW1vdW50UgphbW91bnRNc2F0QgcKBV9jbHR2QgkKB19mcm'
    '9taWRCDgoMX2Z1enpwZXJjZW50QgoKCF9tYXhob3Bz');

@$core.Deprecated('Use getrouteResponseDescriptor instead')
const GetrouteResponse$json = {
  '1': 'GetrouteResponse',
  '2': [
    {'1': 'route', '3': 1, '4': 3, '5': 11, '6': '.cln.GetrouteRoute', '10': 'route'},
  ],
};

/// Descriptor for `GetrouteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getrouteResponseDescriptor = $convert.base64Decode(
    'ChBHZXRyb3V0ZVJlc3BvbnNlEigKBXJvdXRlGAEgAygLMhIuY2xuLkdldHJvdXRlUm91dGVSBX'
    'JvdXRl');

@$core.Deprecated('Use getrouteRouteDescriptor instead')
const GetrouteRoute$json = {
  '1': 'GetrouteRoute',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'channel', '3': 2, '4': 1, '5': 9, '10': 'channel'},
    {'1': 'direction', '3': 3, '4': 1, '5': 13, '10': 'direction'},
    {'1': 'amount_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'delay', '3': 5, '4': 1, '5': 13, '10': 'delay'},
    {'1': 'style', '3': 6, '4': 1, '5': 14, '6': '.cln.GetrouteRoute.GetrouteRouteStyle', '10': 'style'},
  ],
  '4': [GetrouteRoute_GetrouteRouteStyle$json],
};

@$core.Deprecated('Use getrouteRouteDescriptor instead')
const GetrouteRoute_GetrouteRouteStyle$json = {
  '1': 'GetrouteRouteStyle',
  '2': [
    {'1': 'TLV', '2': 0},
  ],
};

/// Descriptor for `GetrouteRoute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getrouteRouteDescriptor = $convert.base64Decode(
    'Cg1HZXRyb3V0ZVJvdXRlEg4KAmlkGAEgASgMUgJpZBIYCgdjaGFubmVsGAIgASgJUgdjaGFubm'
    'VsEhwKCWRpcmVjdGlvbhgDIAEoDVIJZGlyZWN0aW9uEiwKC2Ftb3VudF9tc2F0GAQgASgLMgsu'
    'Y2xuLkFtb3VudFIKYW1vdW50TXNhdBIUCgVkZWxheRgFIAEoDVIFZGVsYXkSOwoFc3R5bGUYBi'
    'ABKA4yJS5jbG4uR2V0cm91dGVSb3V0ZS5HZXRyb3V0ZVJvdXRlU3R5bGVSBXN0eWxlIh0KEkdl'
    'dHJvdXRlUm91dGVTdHlsZRIHCgNUTFYQAA==');

@$core.Deprecated('Use listforwardsRequestDescriptor instead')
const ListforwardsRequest$json = {
  '1': 'ListforwardsRequest',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.cln.ListforwardsRequest.ListforwardsStatus', '9': 0, '10': 'status', '17': true},
    {'1': 'in_channel', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'inChannel', '17': true},
    {'1': 'out_channel', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'outChannel', '17': true},
    {'1': 'index', '3': 4, '4': 1, '5': 14, '6': '.cln.ListforwardsRequest.ListforwardsIndex', '9': 3, '10': 'index', '17': true},
    {'1': 'start', '3': 5, '4': 1, '5': 4, '9': 4, '10': 'start', '17': true},
    {'1': 'limit', '3': 6, '4': 1, '5': 13, '9': 5, '10': 'limit', '17': true},
  ],
  '4': [ListforwardsRequest_ListforwardsStatus$json, ListforwardsRequest_ListforwardsIndex$json],
  '8': [
    {'1': '_status'},
    {'1': '_in_channel'},
    {'1': '_out_channel'},
    {'1': '_index'},
    {'1': '_start'},
    {'1': '_limit'},
  ],
};

@$core.Deprecated('Use listforwardsRequestDescriptor instead')
const ListforwardsRequest_ListforwardsStatus$json = {
  '1': 'ListforwardsStatus',
  '2': [
    {'1': 'OFFERED', '2': 0},
    {'1': 'SETTLED', '2': 1},
    {'1': 'LOCAL_FAILED', '2': 2},
    {'1': 'FAILED', '2': 3},
  ],
};

@$core.Deprecated('Use listforwardsRequestDescriptor instead')
const ListforwardsRequest_ListforwardsIndex$json = {
  '1': 'ListforwardsIndex',
  '2': [
    {'1': 'CREATED', '2': 0},
    {'1': 'UPDATED', '2': 1},
  ],
};

/// Descriptor for `ListforwardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listforwardsRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0Zm9yd2FyZHNSZXF1ZXN0EkgKBnN0YXR1cxgBIAEoDjIrLmNsbi5MaXN0Zm9yd2FyZH'
    'NSZXF1ZXN0Lkxpc3Rmb3J3YXJkc1N0YXR1c0gAUgZzdGF0dXOIAQESIgoKaW5fY2hhbm5lbBgC'
    'IAEoCUgBUglpbkNoYW5uZWyIAQESJAoLb3V0X2NoYW5uZWwYAyABKAlIAlIKb3V0Q2hhbm5lbI'
    'gBARJFCgVpbmRleBgEIAEoDjIqLmNsbi5MaXN0Zm9yd2FyZHNSZXF1ZXN0Lkxpc3Rmb3J3YXJk'
    'c0luZGV4SANSBWluZGV4iAEBEhkKBXN0YXJ0GAUgASgESARSBXN0YXJ0iAEBEhkKBWxpbWl0GA'
    'YgASgNSAVSBWxpbWl0iAEBIkwKEkxpc3Rmb3J3YXJkc1N0YXR1cxILCgdPRkZFUkVEEAASCwoH'
    'U0VUVExFRBABEhAKDExPQ0FMX0ZBSUxFRBACEgoKBkZBSUxFRBADIi0KEUxpc3Rmb3J3YXJkc0'
    'luZGV4EgsKB0NSRUFURUQQABILCgdVUERBVEVEEAFCCQoHX3N0YXR1c0INCgtfaW5fY2hhbm5l'
    'bEIOCgxfb3V0X2NoYW5uZWxCCAoGX2luZGV4QggKBl9zdGFydEIICgZfbGltaXQ=');

@$core.Deprecated('Use listforwardsResponseDescriptor instead')
const ListforwardsResponse$json = {
  '1': 'ListforwardsResponse',
  '2': [
    {'1': 'forwards', '3': 1, '4': 3, '5': 11, '6': '.cln.ListforwardsForwards', '10': 'forwards'},
  ],
};

/// Descriptor for `ListforwardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listforwardsResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0Zm9yd2FyZHNSZXNwb25zZRI1Cghmb3J3YXJkcxgBIAMoCzIZLmNsbi5MaXN0Zm9yd2'
    'FyZHNGb3J3YXJkc1IIZm9yd2FyZHM=');

@$core.Deprecated('Use listforwardsForwardsDescriptor instead')
const ListforwardsForwards$json = {
  '1': 'ListforwardsForwards',
  '2': [
    {'1': 'in_channel', '3': 1, '4': 1, '5': 9, '10': 'inChannel'},
    {'1': 'in_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'inMsat'},
    {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.cln.ListforwardsForwards.ListforwardsForwardsStatus', '10': 'status'},
    {'1': 'received_time', '3': 4, '4': 1, '5': 1, '10': 'receivedTime'},
    {'1': 'out_channel', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'outChannel', '17': true},
    {'1': 'fee_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'feeMsat', '17': true},
    {'1': 'out_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '9': 2, '10': 'outMsat', '17': true},
    {'1': 'style', '3': 9, '4': 1, '5': 14, '6': '.cln.ListforwardsForwards.ListforwardsForwardsStyle', '9': 3, '10': 'style', '17': true},
    {'1': 'in_htlc_id', '3': 10, '4': 1, '5': 4, '9': 4, '10': 'inHtlcId', '17': true},
    {'1': 'out_htlc_id', '3': 11, '4': 1, '5': 4, '9': 5, '10': 'outHtlcId', '17': true},
    {'1': 'created_index', '3': 12, '4': 1, '5': 4, '9': 6, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 13, '4': 1, '5': 4, '9': 7, '10': 'updatedIndex', '17': true},
    {'1': 'resolved_time', '3': 14, '4': 1, '5': 1, '9': 8, '10': 'resolvedTime', '17': true},
    {'1': 'failcode', '3': 15, '4': 1, '5': 13, '9': 9, '10': 'failcode', '17': true},
    {'1': 'failreason', '3': 16, '4': 1, '5': 9, '9': 10, '10': 'failreason', '17': true},
  ],
  '4': [ListforwardsForwards_ListforwardsForwardsStatus$json, ListforwardsForwards_ListforwardsForwardsStyle$json],
  '8': [
    {'1': '_out_channel'},
    {'1': '_fee_msat'},
    {'1': '_out_msat'},
    {'1': '_style'},
    {'1': '_in_htlc_id'},
    {'1': '_out_htlc_id'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
    {'1': '_resolved_time'},
    {'1': '_failcode'},
    {'1': '_failreason'},
  ],
};

@$core.Deprecated('Use listforwardsForwardsDescriptor instead')
const ListforwardsForwards_ListforwardsForwardsStatus$json = {
  '1': 'ListforwardsForwardsStatus',
  '2': [
    {'1': 'OFFERED', '2': 0},
    {'1': 'SETTLED', '2': 1},
    {'1': 'LOCAL_FAILED', '2': 2},
    {'1': 'FAILED', '2': 3},
  ],
};

@$core.Deprecated('Use listforwardsForwardsDescriptor instead')
const ListforwardsForwards_ListforwardsForwardsStyle$json = {
  '1': 'ListforwardsForwardsStyle',
  '2': [
    {'1': 'LEGACY', '2': 0},
    {'1': 'TLV', '2': 1},
  ],
};

/// Descriptor for `ListforwardsForwards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listforwardsForwardsDescriptor = $convert.base64Decode(
    'ChRMaXN0Zm9yd2FyZHNGb3J3YXJkcxIdCgppbl9jaGFubmVsGAEgASgJUglpbkNoYW5uZWwSJA'
    'oHaW5fbXNhdBgCIAEoCzILLmNsbi5BbW91bnRSBmluTXNhdBJMCgZzdGF0dXMYAyABKA4yNC5j'
    'bG4uTGlzdGZvcndhcmRzRm9yd2FyZHMuTGlzdGZvcndhcmRzRm9yd2FyZHNTdGF0dXNSBnN0YX'
    'R1cxIjCg1yZWNlaXZlZF90aW1lGAQgASgBUgxyZWNlaXZlZFRpbWUSJAoLb3V0X2NoYW5uZWwY'
    'BSABKAlIAFIKb3V0Q2hhbm5lbIgBARIrCghmZWVfbXNhdBgHIAEoCzILLmNsbi5BbW91bnRIAV'
    'IHZmVlTXNhdIgBARIrCghvdXRfbXNhdBgIIAEoCzILLmNsbi5BbW91bnRIAlIHb3V0TXNhdIgB'
    'ARJOCgVzdHlsZRgJIAEoDjIzLmNsbi5MaXN0Zm9yd2FyZHNGb3J3YXJkcy5MaXN0Zm9yd2FyZH'
    'NGb3J3YXJkc1N0eWxlSANSBXN0eWxliAEBEiEKCmluX2h0bGNfaWQYCiABKARIBFIIaW5IdGxj'
    'SWSIAQESIwoLb3V0X2h0bGNfaWQYCyABKARIBVIJb3V0SHRsY0lkiAEBEigKDWNyZWF0ZWRfaW'
    '5kZXgYDCABKARIBlIMY3JlYXRlZEluZGV4iAEBEigKDXVwZGF0ZWRfaW5kZXgYDSABKARIB1IM'
    'dXBkYXRlZEluZGV4iAEBEigKDXJlc29sdmVkX3RpbWUYDiABKAFICFIMcmVzb2x2ZWRUaW1liA'
    'EBEh8KCGZhaWxjb2RlGA8gASgNSAlSCGZhaWxjb2RliAEBEiMKCmZhaWxyZWFzb24YECABKAlI'
    'ClIKZmFpbHJlYXNvbogBASJUChpMaXN0Zm9yd2FyZHNGb3J3YXJkc1N0YXR1cxILCgdPRkZFUk'
    'VEEAASCwoHU0VUVExFRBABEhAKDExPQ0FMX0ZBSUxFRBACEgoKBkZBSUxFRBADIjAKGUxpc3Rm'
    'b3J3YXJkc0ZvcndhcmRzU3R5bGUSCgoGTEVHQUNZEAASBwoDVExWEAFCDgoMX291dF9jaGFubm'
    'VsQgsKCV9mZWVfbXNhdEILCglfb3V0X21zYXRCCAoGX3N0eWxlQg0KC19pbl9odGxjX2lkQg4K'
    'DF9vdXRfaHRsY19pZEIQCg5fY3JlYXRlZF9pbmRleEIQCg5fdXBkYXRlZF9pbmRleEIQCg5fcm'
    'Vzb2x2ZWRfdGltZUILCglfZmFpbGNvZGVCDQoLX2ZhaWxyZWFzb24=');

@$core.Deprecated('Use listoffersRequestDescriptor instead')
const ListoffersRequest$json = {
  '1': 'ListoffersRequest',
  '2': [
    {'1': 'offer_id', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'offerId', '17': true},
    {'1': 'active_only', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'activeOnly', '17': true},
  ],
  '8': [
    {'1': '_offer_id'},
    {'1': '_active_only'},
  ],
};

/// Descriptor for `ListoffersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listoffersRequestDescriptor = $convert.base64Decode(
    'ChFMaXN0b2ZmZXJzUmVxdWVzdBIeCghvZmZlcl9pZBgBIAEoDEgAUgdvZmZlcklkiAEBEiQKC2'
    'FjdGl2ZV9vbmx5GAIgASgISAFSCmFjdGl2ZU9ubHmIAQFCCwoJX29mZmVyX2lkQg4KDF9hY3Rp'
    'dmVfb25seQ==');

@$core.Deprecated('Use listoffersResponseDescriptor instead')
const ListoffersResponse$json = {
  '1': 'ListoffersResponse',
  '2': [
    {'1': 'offers', '3': 1, '4': 3, '5': 11, '6': '.cln.ListoffersOffers', '10': 'offers'},
  ],
};

/// Descriptor for `ListoffersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listoffersResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0b2ZmZXJzUmVzcG9uc2USLQoGb2ZmZXJzGAEgAygLMhUuY2xuLkxpc3RvZmZlcnNPZm'
    'ZlcnNSBm9mZmVycw==');

@$core.Deprecated('Use listoffersOffersDescriptor instead')
const ListoffersOffers$json = {
  '1': 'ListoffersOffers',
  '2': [
    {'1': 'offer_id', '3': 1, '4': 1, '5': 12, '10': 'offerId'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {'1': 'single_use', '3': 3, '4': 1, '5': 8, '10': 'singleUse'},
    {'1': 'bolt12', '3': 4, '4': 1, '5': 9, '10': 'bolt12'},
    {'1': 'used', '3': 5, '4': 1, '5': 8, '10': 'used'},
    {'1': 'label', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
  ],
  '8': [
    {'1': '_label'},
  ],
};

/// Descriptor for `ListoffersOffers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listoffersOffersDescriptor = $convert.base64Decode(
    'ChBMaXN0b2ZmZXJzT2ZmZXJzEhkKCG9mZmVyX2lkGAEgASgMUgdvZmZlcklkEhYKBmFjdGl2ZR'
    'gCIAEoCFIGYWN0aXZlEh0KCnNpbmdsZV91c2UYAyABKAhSCXNpbmdsZVVzZRIWCgZib2x0MTIY'
    'BCABKAlSBmJvbHQxMhISCgR1c2VkGAUgASgIUgR1c2VkEhkKBWxhYmVsGAYgASgJSABSBWxhYm'
    'VsiAEBQggKBl9sYWJlbA==');

@$core.Deprecated('Use listpaysRequestDescriptor instead')
const ListpaysRequest$json = {
  '1': 'ListpaysRequest',
  '2': [
    {'1': 'bolt11', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'bolt11', '17': true},
    {'1': 'payment_hash', '3': 2, '4': 1, '5': 12, '9': 1, '10': 'paymentHash', '17': true},
    {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.cln.ListpaysRequest.ListpaysStatus', '9': 2, '10': 'status', '17': true},
  ],
  '4': [ListpaysRequest_ListpaysStatus$json],
  '8': [
    {'1': '_bolt11'},
    {'1': '_payment_hash'},
    {'1': '_status'},
  ],
};

@$core.Deprecated('Use listpaysRequestDescriptor instead')
const ListpaysRequest_ListpaysStatus$json = {
  '1': 'ListpaysStatus',
  '2': [
    {'1': 'PENDING', '2': 0},
    {'1': 'COMPLETE', '2': 1},
    {'1': 'FAILED', '2': 2},
  ],
};

/// Descriptor for `ListpaysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpaysRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0cGF5c1JlcXVlc3QSGwoGYm9sdDExGAEgASgJSABSBmJvbHQxMYgBARImCgxwYXltZW'
    '50X2hhc2gYAiABKAxIAVILcGF5bWVudEhhc2iIAQESQAoGc3RhdHVzGAMgASgOMiMuY2xuLkxp'
    'c3RwYXlzUmVxdWVzdC5MaXN0cGF5c1N0YXR1c0gCUgZzdGF0dXOIAQEiNwoOTGlzdHBheXNTdG'
    'F0dXMSCwoHUEVORElORxAAEgwKCENPTVBMRVRFEAESCgoGRkFJTEVEEAJCCQoHX2JvbHQxMUIP'
    'Cg1fcGF5bWVudF9oYXNoQgkKB19zdGF0dXM=');

@$core.Deprecated('Use listpaysResponseDescriptor instead')
const ListpaysResponse$json = {
  '1': 'ListpaysResponse',
  '2': [
    {'1': 'pays', '3': 1, '4': 3, '5': 11, '6': '.cln.ListpaysPays', '10': 'pays'},
  ],
};

/// Descriptor for `ListpaysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpaysResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0cGF5c1Jlc3BvbnNlEiUKBHBheXMYASADKAsyES5jbG4uTGlzdHBheXNQYXlzUgRwYX'
    'lz');

@$core.Deprecated('Use listpaysPaysDescriptor instead')
const ListpaysPays$json = {
  '1': 'ListpaysPays',
  '2': [
    {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.cln.ListpaysPays.ListpaysPaysStatus', '10': 'status'},
    {'1': 'destination', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'destination', '17': true},
    {'1': 'created_at', '3': 4, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'label', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'label', '17': true},
    {'1': 'bolt11', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 7, '4': 1, '5': 9, '9': 3, '10': 'bolt12', '17': true},
    {'1': 'amount_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'amountMsat', '17': true},
    {'1': 'amount_sent_msat', '3': 9, '4': 1, '5': 11, '6': '.cln.Amount', '9': 5, '10': 'amountSentMsat', '17': true},
    {'1': 'erroronion', '3': 10, '4': 1, '5': 12, '9': 6, '10': 'erroronion', '17': true},
    {'1': 'description', '3': 11, '4': 1, '5': 9, '9': 7, '10': 'description', '17': true},
    {'1': 'completed_at', '3': 12, '4': 1, '5': 4, '9': 8, '10': 'completedAt', '17': true},
    {'1': 'preimage', '3': 13, '4': 1, '5': 12, '9': 9, '10': 'preimage', '17': true},
    {'1': 'number_of_parts', '3': 14, '4': 1, '5': 4, '9': 10, '10': 'numberOfParts', '17': true},
  ],
  '4': [ListpaysPays_ListpaysPaysStatus$json],
  '8': [
    {'1': '_destination'},
    {'1': '_label'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_amount_msat'},
    {'1': '_amount_sent_msat'},
    {'1': '_erroronion'},
    {'1': '_description'},
    {'1': '_completed_at'},
    {'1': '_preimage'},
    {'1': '_number_of_parts'},
  ],
};

@$core.Deprecated('Use listpaysPaysDescriptor instead')
const ListpaysPays_ListpaysPaysStatus$json = {
  '1': 'ListpaysPaysStatus',
  '2': [
    {'1': 'PENDING', '2': 0},
    {'1': 'FAILED', '2': 1},
    {'1': 'COMPLETE', '2': 2},
  ],
};

/// Descriptor for `ListpaysPays`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listpaysPaysDescriptor = $convert.base64Decode(
    'CgxMaXN0cGF5c1BheXMSIQoMcGF5bWVudF9oYXNoGAEgASgMUgtwYXltZW50SGFzaBI8CgZzdG'
    'F0dXMYAiABKA4yJC5jbG4uTGlzdHBheXNQYXlzLkxpc3RwYXlzUGF5c1N0YXR1c1IGc3RhdHVz'
    'EiUKC2Rlc3RpbmF0aW9uGAMgASgMSABSC2Rlc3RpbmF0aW9uiAEBEh0KCmNyZWF0ZWRfYXQYBC'
    'ABKARSCWNyZWF0ZWRBdBIZCgVsYWJlbBgFIAEoCUgBUgVsYWJlbIgBARIbCgZib2x0MTEYBiAB'
    'KAlIAlIGYm9sdDExiAEBEhsKBmJvbHQxMhgHIAEoCUgDUgZib2x0MTKIAQESMQoLYW1vdW50X2'
    '1zYXQYCCABKAsyCy5jbG4uQW1vdW50SARSCmFtb3VudE1zYXSIAQESOgoQYW1vdW50X3NlbnRf'
    'bXNhdBgJIAEoCzILLmNsbi5BbW91bnRIBVIOYW1vdW50U2VudE1zYXSIAQESIwoKZXJyb3Jvbm'
    'lvbhgKIAEoDEgGUgplcnJvcm9uaW9uiAEBEiUKC2Rlc2NyaXB0aW9uGAsgASgJSAdSC2Rlc2Ny'
    'aXB0aW9uiAEBEiYKDGNvbXBsZXRlZF9hdBgMIAEoBEgIUgtjb21wbGV0ZWRBdIgBARIfCghwcm'
    'VpbWFnZRgNIAEoDEgJUghwcmVpbWFnZYgBARIrCg9udW1iZXJfb2ZfcGFydHMYDiABKARIClIN'
    'bnVtYmVyT2ZQYXJ0c4gBASI7ChJMaXN0cGF5c1BheXNTdGF0dXMSCwoHUEVORElORxAAEgoKBk'
    'ZBSUxFRBABEgwKCENPTVBMRVRFEAJCDgoMX2Rlc3RpbmF0aW9uQggKBl9sYWJlbEIJCgdfYm9s'
    'dDExQgkKB19ib2x0MTJCDgoMX2Ftb3VudF9tc2F0QhMKEV9hbW91bnRfc2VudF9tc2F0Qg0KC1'
    '9lcnJvcm9uaW9uQg4KDF9kZXNjcmlwdGlvbkIPCg1fY29tcGxldGVkX2F0QgsKCV9wcmVpbWFn'
    'ZUISChBfbnVtYmVyX29mX3BhcnRz');

@$core.Deprecated('Use listhtlcsRequestDescriptor instead')
const ListhtlcsRequest$json = {
  '1': 'ListhtlcsRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
  ],
  '8': [
    {'1': '_id'},
  ],
};

/// Descriptor for `ListhtlcsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listhtlcsRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0aHRsY3NSZXF1ZXN0EhMKAmlkGAEgASgJSABSAmlkiAEBQgUKA19pZA==');

@$core.Deprecated('Use listhtlcsResponseDescriptor instead')
const ListhtlcsResponse$json = {
  '1': 'ListhtlcsResponse',
  '2': [
    {'1': 'htlcs', '3': 1, '4': 3, '5': 11, '6': '.cln.ListhtlcsHtlcs', '10': 'htlcs'},
  ],
};

/// Descriptor for `ListhtlcsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listhtlcsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0aHRsY3NSZXNwb25zZRIpCgVodGxjcxgBIAMoCzITLmNsbi5MaXN0aHRsY3NIdGxjc1'
    'IFaHRsY3M=');

@$core.Deprecated('Use listhtlcsHtlcsDescriptor instead')
const ListhtlcsHtlcs$json = {
  '1': 'ListhtlcsHtlcs',
  '2': [
    {'1': 'short_channel_id', '3': 1, '4': 1, '5': 9, '10': 'shortChannelId'},
    {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    {'1': 'expiry', '3': 3, '4': 1, '5': 13, '10': 'expiry'},
    {'1': 'amount_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'direction', '3': 5, '4': 1, '5': 14, '6': '.cln.ListhtlcsHtlcs.ListhtlcsHtlcsDirection', '10': 'direction'},
    {'1': 'payment_hash', '3': 6, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'state', '3': 7, '4': 1, '5': 14, '6': '.cln.HtlcState', '10': 'state'},
  ],
  '4': [ListhtlcsHtlcs_ListhtlcsHtlcsDirection$json],
};

@$core.Deprecated('Use listhtlcsHtlcsDescriptor instead')
const ListhtlcsHtlcs_ListhtlcsHtlcsDirection$json = {
  '1': 'ListhtlcsHtlcsDirection',
  '2': [
    {'1': 'OUT', '2': 0},
    {'1': 'IN', '2': 1},
  ],
};

/// Descriptor for `ListhtlcsHtlcs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listhtlcsHtlcsDescriptor = $convert.base64Decode(
    'Cg5MaXN0aHRsY3NIdGxjcxIoChBzaG9ydF9jaGFubmVsX2lkGAEgASgJUg5zaG9ydENoYW5uZW'
    'xJZBIOCgJpZBgCIAEoBFICaWQSFgoGZXhwaXJ5GAMgASgNUgZleHBpcnkSLAoLYW1vdW50X21z'
    'YXQYBCABKAsyCy5jbG4uQW1vdW50UgphbW91bnRNc2F0EkkKCWRpcmVjdGlvbhgFIAEoDjIrLm'
    'Nsbi5MaXN0aHRsY3NIdGxjcy5MaXN0aHRsY3NIdGxjc0RpcmVjdGlvblIJZGlyZWN0aW9uEiEK'
    'DHBheW1lbnRfaGFzaBgGIAEoDFILcGF5bWVudEhhc2gSJAoFc3RhdGUYByABKA4yDi5jbG4uSH'
    'RsY1N0YXRlUgVzdGF0ZSIqChdMaXN0aHRsY3NIdGxjc0RpcmVjdGlvbhIHCgNPVVQQABIGCgJJ'
    'ThAB');

@$core.Deprecated('Use multifundchannelRequestDescriptor instead')
const MultifundchannelRequest$json = {
  '1': 'MultifundchannelRequest',
  '2': [
    {'1': 'destinations', '3': 1, '4': 3, '5': 11, '6': '.cln.MultifundchannelDestinations', '10': 'destinations'},
    {'1': 'feerate', '3': 2, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 0, '10': 'feerate', '17': true},
    {'1': 'minconf', '3': 3, '4': 1, '5': 18, '9': 1, '10': 'minconf', '17': true},
    {'1': 'utxos', '3': 4, '4': 3, '5': 11, '6': '.cln.Outpoint', '10': 'utxos'},
    {'1': 'minchannels', '3': 5, '4': 1, '5': 18, '9': 2, '10': 'minchannels', '17': true},
    {'1': 'commitment_feerate', '3': 6, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 3, '10': 'commitmentFeerate', '17': true},
  ],
  '8': [
    {'1': '_feerate'},
    {'1': '_minconf'},
    {'1': '_minchannels'},
    {'1': '_commitment_feerate'},
  ],
};

/// Descriptor for `MultifundchannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multifundchannelRequestDescriptor = $convert.base64Decode(
    'ChdNdWx0aWZ1bmRjaGFubmVsUmVxdWVzdBJFCgxkZXN0aW5hdGlvbnMYASADKAsyIS5jbG4uTX'
    'VsdGlmdW5kY2hhbm5lbERlc3RpbmF0aW9uc1IMZGVzdGluYXRpb25zEisKB2ZlZXJhdGUYAiAB'
    'KAsyDC5jbG4uRmVlcmF0ZUgAUgdmZWVyYXRliAEBEh0KB21pbmNvbmYYAyABKBJIAVIHbWluY2'
    '9uZogBARIjCgV1dHhvcxgEIAMoCzINLmNsbi5PdXRwb2ludFIFdXR4b3MSJQoLbWluY2hhbm5l'
    'bHMYBSABKBJIAlILbWluY2hhbm5lbHOIAQESQAoSY29tbWl0bWVudF9mZWVyYXRlGAYgASgLMg'
    'wuY2xuLkZlZXJhdGVIA1IRY29tbWl0bWVudEZlZXJhdGWIAQFCCgoIX2ZlZXJhdGVCCgoIX21p'
    'bmNvbmZCDgoMX21pbmNoYW5uZWxzQhUKE19jb21taXRtZW50X2ZlZXJhdGU=');

@$core.Deprecated('Use multifundchannelResponseDescriptor instead')
const MultifundchannelResponse$json = {
  '1': 'MultifundchannelResponse',
  '2': [
    {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
    {'1': 'txid', '3': 2, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'channel_ids', '3': 3, '4': 3, '5': 11, '6': '.cln.MultifundchannelChannel_ids', '10': 'channelIds'},
    {'1': 'failed', '3': 4, '4': 3, '5': 11, '6': '.cln.MultifundchannelFailed', '10': 'failed'},
  ],
};

/// Descriptor for `MultifundchannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multifundchannelResponseDescriptor = $convert.base64Decode(
    'ChhNdWx0aWZ1bmRjaGFubmVsUmVzcG9uc2USDgoCdHgYASABKAxSAnR4EhIKBHR4aWQYAiABKA'
    'xSBHR4aWQSQQoLY2hhbm5lbF9pZHMYAyADKAsyIC5jbG4uTXVsdGlmdW5kY2hhbm5lbENoYW5u'
    'ZWxfaWRzUgpjaGFubmVsSWRzEjMKBmZhaWxlZBgEIAMoCzIbLmNsbi5NdWx0aWZ1bmRjaGFubm'
    'VsRmFpbGVkUgZmYWlsZWQ=');

@$core.Deprecated('Use multifundchannelDestinationsDescriptor instead')
const MultifundchannelDestinations$json = {
  '1': 'MultifundchannelDestinations',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'amount', '3': 2, '4': 1, '5': 11, '6': '.cln.AmountOrAll', '10': 'amount'},
    {'1': 'announce', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'announce', '17': true},
    {'1': 'push_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'pushMsat', '17': true},
    {'1': 'close_to', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'closeTo', '17': true},
    {'1': 'request_amt', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '9': 3, '10': 'requestAmt', '17': true},
    {'1': 'compact_lease', '3': 7, '4': 1, '5': 9, '9': 4, '10': 'compactLease', '17': true},
    {'1': 'mindepth', '3': 8, '4': 1, '5': 13, '9': 5, '10': 'mindepth', '17': true},
    {'1': 'reserve', '3': 9, '4': 1, '5': 11, '6': '.cln.Amount', '9': 6, '10': 'reserve', '17': true},
  ],
  '8': [
    {'1': '_announce'},
    {'1': '_push_msat'},
    {'1': '_close_to'},
    {'1': '_request_amt'},
    {'1': '_compact_lease'},
    {'1': '_mindepth'},
    {'1': '_reserve'},
  ],
};

/// Descriptor for `MultifundchannelDestinations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multifundchannelDestinationsDescriptor = $convert.base64Decode(
    'ChxNdWx0aWZ1bmRjaGFubmVsRGVzdGluYXRpb25zEg4KAmlkGAEgASgJUgJpZBIoCgZhbW91bn'
    'QYAiABKAsyEC5jbG4uQW1vdW50T3JBbGxSBmFtb3VudBIfCghhbm5vdW5jZRgDIAEoCEgAUghh'
    'bm5vdW5jZYgBARItCglwdXNoX21zYXQYBCABKAsyCy5jbG4uQW1vdW50SAFSCHB1c2hNc2F0iA'
    'EBEh4KCGNsb3NlX3RvGAUgASgJSAJSB2Nsb3NlVG+IAQESMQoLcmVxdWVzdF9hbXQYBiABKAsy'
    'Cy5jbG4uQW1vdW50SANSCnJlcXVlc3RBbXSIAQESKAoNY29tcGFjdF9sZWFzZRgHIAEoCUgEUg'
    'xjb21wYWN0TGVhc2WIAQESHwoIbWluZGVwdGgYCCABKA1IBVIIbWluZGVwdGiIAQESKgoHcmVz'
    'ZXJ2ZRgJIAEoCzILLmNsbi5BbW91bnRIBlIHcmVzZXJ2ZYgBAUILCglfYW5ub3VuY2VCDAoKX3'
    'B1c2hfbXNhdEILCglfY2xvc2VfdG9CDgoMX3JlcXVlc3RfYW10QhAKDl9jb21wYWN0X2xlYXNl'
    'QgsKCV9taW5kZXB0aEIKCghfcmVzZXJ2ZQ==');

@$core.Deprecated('Use multifundchannelChannel_idsDescriptor instead')
const MultifundchannelChannel_ids$json = {
  '1': 'MultifundchannelChannel_ids',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'outnum', '3': 2, '4': 1, '5': 13, '10': 'outnum'},
    {'1': 'channel_id', '3': 3, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'channel_type', '3': 4, '4': 1, '5': 11, '6': '.cln.MultifundchannelChannel_idsChannel_type', '9': 0, '10': 'channelType', '17': true},
    {'1': 'close_to', '3': 5, '4': 1, '5': 12, '9': 1, '10': 'closeTo', '17': true},
  ],
  '8': [
    {'1': '_channel_type'},
    {'1': '_close_to'},
  ],
};

/// Descriptor for `MultifundchannelChannel_ids`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multifundchannelChannel_idsDescriptor = $convert.base64Decode(
    'ChtNdWx0aWZ1bmRjaGFubmVsQ2hhbm5lbF9pZHMSDgoCaWQYASABKAxSAmlkEhYKBm91dG51bR'
    'gCIAEoDVIGb3V0bnVtEh0KCmNoYW5uZWxfaWQYAyABKAxSCWNoYW5uZWxJZBJUCgxjaGFubmVs'
    'X3R5cGUYBCABKAsyLC5jbG4uTXVsdGlmdW5kY2hhbm5lbENoYW5uZWxfaWRzQ2hhbm5lbF90eX'
    'BlSABSC2NoYW5uZWxUeXBliAEBEh4KCGNsb3NlX3RvGAUgASgMSAFSB2Nsb3NlVG+IAQFCDwoN'
    'X2NoYW5uZWxfdHlwZUILCglfY2xvc2VfdG8=');

@$core.Deprecated('Use multifundchannelChannel_idsChannel_typeDescriptor instead')
const MultifundchannelChannel_idsChannel_type$json = {
  '1': 'MultifundchannelChannel_idsChannel_type',
  '2': [
    {'1': 'bits', '3': 1, '4': 3, '5': 13, '10': 'bits'},
    {'1': 'names', '3': 2, '4': 3, '5': 14, '6': '.cln.ChannelTypeName', '10': 'names'},
  ],
};

/// Descriptor for `MultifundchannelChannel_idsChannel_type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multifundchannelChannel_idsChannel_typeDescriptor = $convert.base64Decode(
    'CidNdWx0aWZ1bmRjaGFubmVsQ2hhbm5lbF9pZHNDaGFubmVsX3R5cGUSEgoEYml0cxgBIAMoDV'
    'IEYml0cxIqCgVuYW1lcxgCIAMoDjIULmNsbi5DaGFubmVsVHlwZU5hbWVSBW5hbWVz');

@$core.Deprecated('Use multifundchannelFailedDescriptor instead')
const MultifundchannelFailed$json = {
  '1': 'MultifundchannelFailed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'method', '3': 2, '4': 1, '5': 14, '6': '.cln.MultifundchannelFailed.MultifundchannelFailedMethod', '10': 'method'},
    {'1': 'error', '3': 3, '4': 1, '5': 11, '6': '.cln.MultifundchannelFailedError', '10': 'error'},
  ],
  '4': [MultifundchannelFailed_MultifundchannelFailedMethod$json],
};

@$core.Deprecated('Use multifundchannelFailedDescriptor instead')
const MultifundchannelFailed_MultifundchannelFailedMethod$json = {
  '1': 'MultifundchannelFailedMethod',
  '2': [
    {'1': 'CONNECT', '2': 0},
    {'1': 'OPENCHANNEL_INIT', '2': 1},
    {'1': 'FUNDCHANNEL_START', '2': 2},
    {'1': 'FUNDCHANNEL_COMPLETE', '2': 3},
  ],
};

/// Descriptor for `MultifundchannelFailed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multifundchannelFailedDescriptor = $convert.base64Decode(
    'ChZNdWx0aWZ1bmRjaGFubmVsRmFpbGVkEg4KAmlkGAEgASgMUgJpZBJQCgZtZXRob2QYAiABKA'
    '4yOC5jbG4uTXVsdGlmdW5kY2hhbm5lbEZhaWxlZC5NdWx0aWZ1bmRjaGFubmVsRmFpbGVkTWV0'
    'aG9kUgZtZXRob2QSNgoFZXJyb3IYAyABKAsyIC5jbG4uTXVsdGlmdW5kY2hhbm5lbEZhaWxlZE'
    'Vycm9yUgVlcnJvciJyChxNdWx0aWZ1bmRjaGFubmVsRmFpbGVkTWV0aG9kEgsKB0NPTk5FQ1QQ'
    'ABIUChBPUEVOQ0hBTk5FTF9JTklUEAESFQoRRlVORENIQU5ORUxfU1RBUlQQAhIYChRGVU5EQ0'
    'hBTk5FTF9DT01QTEVURRAD');

@$core.Deprecated('Use multifundchannelFailedErrorDescriptor instead')
const MultifundchannelFailedError$json = {
  '1': 'MultifundchannelFailedError',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 18, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MultifundchannelFailedError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multifundchannelFailedErrorDescriptor = $convert.base64Decode(
    'ChtNdWx0aWZ1bmRjaGFubmVsRmFpbGVkRXJyb3ISEgoEY29kZRgBIAEoElIEY29kZRIYCgdtZX'
    'NzYWdlGAIgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use multiwithdrawRequestDescriptor instead')
const MultiwithdrawRequest$json = {
  '1': 'MultiwithdrawRequest',
  '2': [
    {'1': 'outputs', '3': 1, '4': 3, '5': 11, '6': '.cln.OutputDesc', '10': 'outputs'},
    {'1': 'feerate', '3': 2, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 0, '10': 'feerate', '17': true},
    {'1': 'minconf', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'minconf', '17': true},
    {'1': 'utxos', '3': 4, '4': 3, '5': 11, '6': '.cln.Outpoint', '10': 'utxos'},
  ],
  '8': [
    {'1': '_feerate'},
    {'1': '_minconf'},
  ],
};

/// Descriptor for `MultiwithdrawRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiwithdrawRequestDescriptor = $convert.base64Decode(
    'ChRNdWx0aXdpdGhkcmF3UmVxdWVzdBIpCgdvdXRwdXRzGAEgAygLMg8uY2xuLk91dHB1dERlc2'
    'NSB291dHB1dHMSKwoHZmVlcmF0ZRgCIAEoCzIMLmNsbi5GZWVyYXRlSABSB2ZlZXJhdGWIAQES'
    'HQoHbWluY29uZhgDIAEoDUgBUgdtaW5jb25miAEBEiMKBXV0eG9zGAQgAygLMg0uY2xuLk91dH'
    'BvaW50UgV1dHhvc0IKCghfZmVlcmF0ZUIKCghfbWluY29uZg==');

@$core.Deprecated('Use multiwithdrawResponseDescriptor instead')
const MultiwithdrawResponse$json = {
  '1': 'MultiwithdrawResponse',
  '2': [
    {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
    {'1': 'txid', '3': 2, '4': 1, '5': 12, '10': 'txid'},
  ],
};

/// Descriptor for `MultiwithdrawResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiwithdrawResponseDescriptor = $convert.base64Decode(
    'ChVNdWx0aXdpdGhkcmF3UmVzcG9uc2USDgoCdHgYASABKAxSAnR4EhIKBHR4aWQYAiABKAxSBH'
    'R4aWQ=');

@$core.Deprecated('Use offerRequestDescriptor instead')
const OfferRequest$json = {
  '1': 'OfferRequest',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 9, '10': 'amount'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'issuer', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'issuer', '17': true},
    {'1': 'label', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'label', '17': true},
    {'1': 'quantity_max', '3': 5, '4': 1, '5': 4, '9': 3, '10': 'quantityMax', '17': true},
    {'1': 'absolute_expiry', '3': 6, '4': 1, '5': 4, '9': 4, '10': 'absoluteExpiry', '17': true},
    {'1': 'recurrence', '3': 7, '4': 1, '5': 9, '9': 5, '10': 'recurrence', '17': true},
    {'1': 'recurrence_base', '3': 8, '4': 1, '5': 9, '9': 6, '10': 'recurrenceBase', '17': true},
    {'1': 'recurrence_paywindow', '3': 9, '4': 1, '5': 9, '9': 7, '10': 'recurrencePaywindow', '17': true},
    {'1': 'recurrence_limit', '3': 10, '4': 1, '5': 13, '9': 8, '10': 'recurrenceLimit', '17': true},
    {'1': 'single_use', '3': 11, '4': 1, '5': 8, '9': 9, '10': 'singleUse', '17': true},
    {'1': 'recurrence_start_any_period', '3': 12, '4': 1, '5': 8, '9': 10, '10': 'recurrenceStartAnyPeriod', '17': true},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_issuer'},
    {'1': '_label'},
    {'1': '_quantity_max'},
    {'1': '_absolute_expiry'},
    {'1': '_recurrence'},
    {'1': '_recurrence_base'},
    {'1': '_recurrence_paywindow'},
    {'1': '_recurrence_limit'},
    {'1': '_single_use'},
    {'1': '_recurrence_start_any_period'},
  ],
};

/// Descriptor for `OfferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offerRequestDescriptor = $convert.base64Decode(
    'CgxPZmZlclJlcXVlc3QSFgoGYW1vdW50GAEgASgJUgZhbW91bnQSJQoLZGVzY3JpcHRpb24YAi'
    'ABKAlIAFILZGVzY3JpcHRpb26IAQESGwoGaXNzdWVyGAMgASgJSAFSBmlzc3VlcogBARIZCgVs'
    'YWJlbBgEIAEoCUgCUgVsYWJlbIgBARImCgxxdWFudGl0eV9tYXgYBSABKARIA1ILcXVhbnRpdH'
    'lNYXiIAQESLAoPYWJzb2x1dGVfZXhwaXJ5GAYgASgESARSDmFic29sdXRlRXhwaXJ5iAEBEiMK'
    'CnJlY3VycmVuY2UYByABKAlIBVIKcmVjdXJyZW5jZYgBARIsCg9yZWN1cnJlbmNlX2Jhc2UYCC'
    'ABKAlIBlIOcmVjdXJyZW5jZUJhc2WIAQESNgoUcmVjdXJyZW5jZV9wYXl3aW5kb3cYCSABKAlI'
    'B1ITcmVjdXJyZW5jZVBheXdpbmRvd4gBARIuChByZWN1cnJlbmNlX2xpbWl0GAogASgNSAhSD3'
    'JlY3VycmVuY2VMaW1pdIgBARIiCgpzaW5nbGVfdXNlGAsgASgISAlSCXNpbmdsZVVzZYgBARJC'
    'ChtyZWN1cnJlbmNlX3N0YXJ0X2FueV9wZXJpb2QYDCABKAhIClIYcmVjdXJyZW5jZVN0YXJ0QW'
    '55UGVyaW9kiAEBQg4KDF9kZXNjcmlwdGlvbkIJCgdfaXNzdWVyQggKBl9sYWJlbEIPCg1fcXVh'
    'bnRpdHlfbWF4QhIKEF9hYnNvbHV0ZV9leHBpcnlCDQoLX3JlY3VycmVuY2VCEgoQX3JlY3Vycm'
    'VuY2VfYmFzZUIXChVfcmVjdXJyZW5jZV9wYXl3aW5kb3dCEwoRX3JlY3VycmVuY2VfbGltaXRC'
    'DQoLX3NpbmdsZV91c2VCHgocX3JlY3VycmVuY2Vfc3RhcnRfYW55X3BlcmlvZA==');

@$core.Deprecated('Use offerResponseDescriptor instead')
const OfferResponse$json = {
  '1': 'OfferResponse',
  '2': [
    {'1': 'offer_id', '3': 1, '4': 1, '5': 12, '10': 'offerId'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {'1': 'single_use', '3': 3, '4': 1, '5': 8, '10': 'singleUse'},
    {'1': 'bolt12', '3': 4, '4': 1, '5': 9, '10': 'bolt12'},
    {'1': 'used', '3': 5, '4': 1, '5': 8, '10': 'used'},
    {'1': 'created', '3': 6, '4': 1, '5': 8, '10': 'created'},
    {'1': 'label', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'label', '17': true},
  ],
  '8': [
    {'1': '_label'},
  ],
};

/// Descriptor for `OfferResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offerResponseDescriptor = $convert.base64Decode(
    'Cg1PZmZlclJlc3BvbnNlEhkKCG9mZmVyX2lkGAEgASgMUgdvZmZlcklkEhYKBmFjdGl2ZRgCIA'
    'EoCFIGYWN0aXZlEh0KCnNpbmdsZV91c2UYAyABKAhSCXNpbmdsZVVzZRIWCgZib2x0MTIYBCAB'
    'KAlSBmJvbHQxMhISCgR1c2VkGAUgASgIUgR1c2VkEhgKB2NyZWF0ZWQYBiABKAhSB2NyZWF0ZW'
    'QSGQoFbGFiZWwYByABKAlIAFIFbGFiZWyIAQFCCAoGX2xhYmVs');

@$core.Deprecated('Use openchannel_abortRequestDescriptor instead')
const Openchannel_abortRequest$json = {
  '1': 'Openchannel_abortRequest',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
  ],
};

/// Descriptor for `Openchannel_abortRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_abortRequestDescriptor = $convert.base64Decode(
    'ChhPcGVuY2hhbm5lbF9hYm9ydFJlcXVlc3QSHQoKY2hhbm5lbF9pZBgBIAEoDFIJY2hhbm5lbE'
    'lk');

@$core.Deprecated('Use openchannel_abortResponseDescriptor instead')
const Openchannel_abortResponse$json = {
  '1': 'Openchannel_abortResponse',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'channel_canceled', '3': 2, '4': 1, '5': 8, '10': 'channelCanceled'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `Openchannel_abortResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_abortResponseDescriptor = $convert.base64Decode(
    'ChlPcGVuY2hhbm5lbF9hYm9ydFJlc3BvbnNlEh0KCmNoYW5uZWxfaWQYASABKAxSCWNoYW5uZW'
    'xJZBIpChBjaGFubmVsX2NhbmNlbGVkGAIgASgIUg9jaGFubmVsQ2FuY2VsZWQSFgoGcmVhc29u'
    'GAMgASgJUgZyZWFzb24=');

@$core.Deprecated('Use openchannel_bumpRequestDescriptor instead')
const Openchannel_bumpRequest$json = {
  '1': 'Openchannel_bumpRequest',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'initialpsbt', '3': 2, '4': 1, '5': 9, '10': 'initialpsbt'},
    {'1': 'funding_feerate', '3': 3, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 0, '10': 'fundingFeerate', '17': true},
    {'1': 'amount', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amount'},
  ],
  '8': [
    {'1': '_funding_feerate'},
  ],
};

/// Descriptor for `Openchannel_bumpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_bumpRequestDescriptor = $convert.base64Decode(
    'ChdPcGVuY2hhbm5lbF9idW1wUmVxdWVzdBIdCgpjaGFubmVsX2lkGAEgASgMUgljaGFubmVsSW'
    'QSIAoLaW5pdGlhbHBzYnQYAiABKAlSC2luaXRpYWxwc2J0EjoKD2Z1bmRpbmdfZmVlcmF0ZRgD'
    'IAEoCzIMLmNsbi5GZWVyYXRlSABSDmZ1bmRpbmdGZWVyYXRliAEBEiMKBmFtb3VudBgEIAEoCz'
    'ILLmNsbi5BbW91bnRSBmFtb3VudEISChBfZnVuZGluZ19mZWVyYXRl');

@$core.Deprecated('Use openchannel_bumpResponseDescriptor instead')
const Openchannel_bumpResponse$json = {
  '1': 'Openchannel_bumpResponse',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'channel_type', '3': 2, '4': 1, '5': 11, '6': '.cln.Openchannel_bumpChannel_type', '9': 0, '10': 'channelType', '17': true},
    {'1': 'psbt', '3': 3, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'commitments_secured', '3': 4, '4': 1, '5': 8, '10': 'commitmentsSecured'},
    {'1': 'funding_serial', '3': 5, '4': 1, '5': 4, '10': 'fundingSerial'},
    {'1': 'requires_confirmed_inputs', '3': 6, '4': 1, '5': 8, '9': 1, '10': 'requiresConfirmedInputs', '17': true},
  ],
  '8': [
    {'1': '_channel_type'},
    {'1': '_requires_confirmed_inputs'},
  ],
};

/// Descriptor for `Openchannel_bumpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_bumpResponseDescriptor = $convert.base64Decode(
    'ChhPcGVuY2hhbm5lbF9idW1wUmVzcG9uc2USHQoKY2hhbm5lbF9pZBgBIAEoDFIJY2hhbm5lbE'
    'lkEkkKDGNoYW5uZWxfdHlwZRgCIAEoCzIhLmNsbi5PcGVuY2hhbm5lbF9idW1wQ2hhbm5lbF90'
    'eXBlSABSC2NoYW5uZWxUeXBliAEBEhIKBHBzYnQYAyABKAlSBHBzYnQSLwoTY29tbWl0bWVudH'
    'Nfc2VjdXJlZBgEIAEoCFISY29tbWl0bWVudHNTZWN1cmVkEiUKDmZ1bmRpbmdfc2VyaWFsGAUg'
    'ASgEUg1mdW5kaW5nU2VyaWFsEj8KGXJlcXVpcmVzX2NvbmZpcm1lZF9pbnB1dHMYBiABKAhIAV'
    'IXcmVxdWlyZXNDb25maXJtZWRJbnB1dHOIAQFCDwoNX2NoYW5uZWxfdHlwZUIcChpfcmVxdWly'
    'ZXNfY29uZmlybWVkX2lucHV0cw==');

@$core.Deprecated('Use openchannel_bumpChannel_typeDescriptor instead')
const Openchannel_bumpChannel_type$json = {
  '1': 'Openchannel_bumpChannel_type',
  '2': [
    {'1': 'bits', '3': 1, '4': 3, '5': 13, '10': 'bits'},
    {'1': 'names', '3': 2, '4': 3, '5': 14, '6': '.cln.ChannelTypeName', '10': 'names'},
  ],
};

/// Descriptor for `Openchannel_bumpChannel_type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_bumpChannel_typeDescriptor = $convert.base64Decode(
    'ChxPcGVuY2hhbm5lbF9idW1wQ2hhbm5lbF90eXBlEhIKBGJpdHMYASADKA1SBGJpdHMSKgoFbm'
    'FtZXMYAiADKA4yFC5jbG4uQ2hhbm5lbFR5cGVOYW1lUgVuYW1lcw==');

@$core.Deprecated('Use openchannel_initRequestDescriptor instead')
const Openchannel_initRequest$json = {
  '1': 'Openchannel_initRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'initialpsbt', '3': 2, '4': 1, '5': 9, '10': 'initialpsbt'},
    {'1': 'commitment_feerate', '3': 3, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 0, '10': 'commitmentFeerate', '17': true},
    {'1': 'funding_feerate', '3': 4, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 1, '10': 'fundingFeerate', '17': true},
    {'1': 'announce', '3': 5, '4': 1, '5': 8, '9': 2, '10': 'announce', '17': true},
    {'1': 'close_to', '3': 6, '4': 1, '5': 9, '9': 3, '10': 'closeTo', '17': true},
    {'1': 'request_amt', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '9': 4, '10': 'requestAmt', '17': true},
    {'1': 'compact_lease', '3': 8, '4': 1, '5': 12, '9': 5, '10': 'compactLease', '17': true},
    {'1': 'channel_type', '3': 9, '4': 3, '5': 13, '10': 'channelType'},
    {'1': 'amount', '3': 10, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amount'},
  ],
  '8': [
    {'1': '_commitment_feerate'},
    {'1': '_funding_feerate'},
    {'1': '_announce'},
    {'1': '_close_to'},
    {'1': '_request_amt'},
    {'1': '_compact_lease'},
  ],
};

/// Descriptor for `Openchannel_initRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_initRequestDescriptor = $convert.base64Decode(
    'ChdPcGVuY2hhbm5lbF9pbml0UmVxdWVzdBIOCgJpZBgBIAEoDFICaWQSIAoLaW5pdGlhbHBzYn'
    'QYAiABKAlSC2luaXRpYWxwc2J0EkAKEmNvbW1pdG1lbnRfZmVlcmF0ZRgDIAEoCzIMLmNsbi5G'
    'ZWVyYXRlSABSEWNvbW1pdG1lbnRGZWVyYXRliAEBEjoKD2Z1bmRpbmdfZmVlcmF0ZRgEIAEoCz'
    'IMLmNsbi5GZWVyYXRlSAFSDmZ1bmRpbmdGZWVyYXRliAEBEh8KCGFubm91bmNlGAUgASgISAJS'
    'CGFubm91bmNliAEBEh4KCGNsb3NlX3RvGAYgASgJSANSB2Nsb3NlVG+IAQESMQoLcmVxdWVzdF'
    '9hbXQYByABKAsyCy5jbG4uQW1vdW50SARSCnJlcXVlc3RBbXSIAQESKAoNY29tcGFjdF9sZWFz'
    'ZRgIIAEoDEgFUgxjb21wYWN0TGVhc2WIAQESIQoMY2hhbm5lbF90eXBlGAkgAygNUgtjaGFubm'
    'VsVHlwZRIjCgZhbW91bnQYCiABKAsyCy5jbG4uQW1vdW50UgZhbW91bnRCFQoTX2NvbW1pdG1l'
    'bnRfZmVlcmF0ZUISChBfZnVuZGluZ19mZWVyYXRlQgsKCV9hbm5vdW5jZUILCglfY2xvc2VfdG'
    '9CDgoMX3JlcXVlc3RfYW10QhAKDl9jb21wYWN0X2xlYXNl');

@$core.Deprecated('Use openchannel_initResponseDescriptor instead')
const Openchannel_initResponse$json = {
  '1': 'Openchannel_initResponse',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'psbt', '3': 2, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'channel_type', '3': 3, '4': 1, '5': 11, '6': '.cln.Openchannel_initChannel_type', '9': 0, '10': 'channelType', '17': true},
    {'1': 'commitments_secured', '3': 4, '4': 1, '5': 8, '10': 'commitmentsSecured'},
    {'1': 'funding_serial', '3': 5, '4': 1, '5': 4, '10': 'fundingSerial'},
    {'1': 'requires_confirmed_inputs', '3': 6, '4': 1, '5': 8, '9': 1, '10': 'requiresConfirmedInputs', '17': true},
  ],
  '8': [
    {'1': '_channel_type'},
    {'1': '_requires_confirmed_inputs'},
  ],
};

/// Descriptor for `Openchannel_initResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_initResponseDescriptor = $convert.base64Decode(
    'ChhPcGVuY2hhbm5lbF9pbml0UmVzcG9uc2USHQoKY2hhbm5lbF9pZBgBIAEoDFIJY2hhbm5lbE'
    'lkEhIKBHBzYnQYAiABKAlSBHBzYnQSSQoMY2hhbm5lbF90eXBlGAMgASgLMiEuY2xuLk9wZW5j'
    'aGFubmVsX2luaXRDaGFubmVsX3R5cGVIAFILY2hhbm5lbFR5cGWIAQESLwoTY29tbWl0bWVudH'
    'Nfc2VjdXJlZBgEIAEoCFISY29tbWl0bWVudHNTZWN1cmVkEiUKDmZ1bmRpbmdfc2VyaWFsGAUg'
    'ASgEUg1mdW5kaW5nU2VyaWFsEj8KGXJlcXVpcmVzX2NvbmZpcm1lZF9pbnB1dHMYBiABKAhIAV'
    'IXcmVxdWlyZXNDb25maXJtZWRJbnB1dHOIAQFCDwoNX2NoYW5uZWxfdHlwZUIcChpfcmVxdWly'
    'ZXNfY29uZmlybWVkX2lucHV0cw==');

@$core.Deprecated('Use openchannel_initChannel_typeDescriptor instead')
const Openchannel_initChannel_type$json = {
  '1': 'Openchannel_initChannel_type',
  '2': [
    {'1': 'bits', '3': 1, '4': 3, '5': 13, '10': 'bits'},
    {'1': 'names', '3': 2, '4': 3, '5': 14, '6': '.cln.ChannelTypeName', '10': 'names'},
  ],
};

/// Descriptor for `Openchannel_initChannel_type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_initChannel_typeDescriptor = $convert.base64Decode(
    'ChxPcGVuY2hhbm5lbF9pbml0Q2hhbm5lbF90eXBlEhIKBGJpdHMYASADKA1SBGJpdHMSKgoFbm'
    'FtZXMYAiADKA4yFC5jbG4uQ2hhbm5lbFR5cGVOYW1lUgVuYW1lcw==');

@$core.Deprecated('Use openchannel_signedRequestDescriptor instead')
const Openchannel_signedRequest$json = {
  '1': 'Openchannel_signedRequest',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'signed_psbt', '3': 2, '4': 1, '5': 9, '10': 'signedPsbt'},
  ],
};

/// Descriptor for `Openchannel_signedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_signedRequestDescriptor = $convert.base64Decode(
    'ChlPcGVuY2hhbm5lbF9zaWduZWRSZXF1ZXN0Eh0KCmNoYW5uZWxfaWQYASABKAxSCWNoYW5uZW'
    'xJZBIfCgtzaWduZWRfcHNidBgCIAEoCVIKc2lnbmVkUHNidA==');

@$core.Deprecated('Use openchannel_signedResponseDescriptor instead')
const Openchannel_signedResponse$json = {
  '1': 'Openchannel_signedResponse',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'tx', '3': 2, '4': 1, '5': 12, '10': 'tx'},
    {'1': 'txid', '3': 3, '4': 1, '5': 12, '10': 'txid'},
  ],
};

/// Descriptor for `Openchannel_signedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_signedResponseDescriptor = $convert.base64Decode(
    'ChpPcGVuY2hhbm5lbF9zaWduZWRSZXNwb25zZRIdCgpjaGFubmVsX2lkGAEgASgMUgljaGFubm'
    'VsSWQSDgoCdHgYAiABKAxSAnR4EhIKBHR4aWQYAyABKAxSBHR4aWQ=');

@$core.Deprecated('Use openchannel_updateRequestDescriptor instead')
const Openchannel_updateRequest$json = {
  '1': 'Openchannel_updateRequest',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'psbt', '3': 2, '4': 1, '5': 9, '10': 'psbt'},
  ],
};

/// Descriptor for `Openchannel_updateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_updateRequestDescriptor = $convert.base64Decode(
    'ChlPcGVuY2hhbm5lbF91cGRhdGVSZXF1ZXN0Eh0KCmNoYW5uZWxfaWQYASABKAxSCWNoYW5uZW'
    'xJZBISCgRwc2J0GAIgASgJUgRwc2J0');

@$core.Deprecated('Use openchannel_updateResponseDescriptor instead')
const Openchannel_updateResponse$json = {
  '1': 'Openchannel_updateResponse',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'channel_type', '3': 2, '4': 1, '5': 11, '6': '.cln.Openchannel_updateChannel_type', '9': 0, '10': 'channelType', '17': true},
    {'1': 'psbt', '3': 3, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'commitments_secured', '3': 4, '4': 1, '5': 8, '10': 'commitmentsSecured'},
    {'1': 'funding_outnum', '3': 5, '4': 1, '5': 13, '10': 'fundingOutnum'},
    {'1': 'close_to', '3': 6, '4': 1, '5': 12, '9': 1, '10': 'closeTo', '17': true},
    {'1': 'requires_confirmed_inputs', '3': 7, '4': 1, '5': 8, '9': 2, '10': 'requiresConfirmedInputs', '17': true},
  ],
  '8': [
    {'1': '_channel_type'},
    {'1': '_close_to'},
    {'1': '_requires_confirmed_inputs'},
  ],
};

/// Descriptor for `Openchannel_updateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_updateResponseDescriptor = $convert.base64Decode(
    'ChpPcGVuY2hhbm5lbF91cGRhdGVSZXNwb25zZRIdCgpjaGFubmVsX2lkGAEgASgMUgljaGFubm'
    'VsSWQSSwoMY2hhbm5lbF90eXBlGAIgASgLMiMuY2xuLk9wZW5jaGFubmVsX3VwZGF0ZUNoYW5u'
    'ZWxfdHlwZUgAUgtjaGFubmVsVHlwZYgBARISCgRwc2J0GAMgASgJUgRwc2J0Ei8KE2NvbW1pdG'
    '1lbnRzX3NlY3VyZWQYBCABKAhSEmNvbW1pdG1lbnRzU2VjdXJlZBIlCg5mdW5kaW5nX291dG51'
    'bRgFIAEoDVINZnVuZGluZ091dG51bRIeCghjbG9zZV90bxgGIAEoDEgBUgdjbG9zZVRviAEBEj'
    '8KGXJlcXVpcmVzX2NvbmZpcm1lZF9pbnB1dHMYByABKAhIAlIXcmVxdWlyZXNDb25maXJtZWRJ'
    'bnB1dHOIAQFCDwoNX2NoYW5uZWxfdHlwZUILCglfY2xvc2VfdG9CHAoaX3JlcXVpcmVzX2Nvbm'
    'Zpcm1lZF9pbnB1dHM=');

@$core.Deprecated('Use openchannel_updateChannel_typeDescriptor instead')
const Openchannel_updateChannel_type$json = {
  '1': 'Openchannel_updateChannel_type',
  '2': [
    {'1': 'bits', '3': 1, '4': 3, '5': 13, '10': 'bits'},
    {'1': 'names', '3': 2, '4': 3, '5': 14, '6': '.cln.ChannelTypeName', '10': 'names'},
  ],
};

/// Descriptor for `Openchannel_updateChannel_type`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openchannel_updateChannel_typeDescriptor = $convert.base64Decode(
    'Ch5PcGVuY2hhbm5lbF91cGRhdGVDaGFubmVsX3R5cGUSEgoEYml0cxgBIAMoDVIEYml0cxIqCg'
    'VuYW1lcxgCIAMoDjIULmNsbi5DaGFubmVsVHlwZU5hbWVSBW5hbWVz');

@$core.Deprecated('Use pingRequestDescriptor instead')
const PingRequest$json = {
  '1': 'PingRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'len', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'len', '17': true},
    {'1': 'pongbytes', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'pongbytes', '17': true},
  ],
  '8': [
    {'1': '_len'},
    {'1': '_pongbytes'},
  ],
};

/// Descriptor for `PingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor = $convert.base64Decode(
    'CgtQaW5nUmVxdWVzdBIOCgJpZBgBIAEoDFICaWQSFQoDbGVuGAIgASgNSABSA2xlbogBARIhCg'
    'lwb25nYnl0ZXMYAyABKA1IAVIJcG9uZ2J5dGVziAEBQgYKBF9sZW5CDAoKX3BvbmdieXRlcw==');

@$core.Deprecated('Use pingResponseDescriptor instead')
const PingResponse$json = {
  '1': 'PingResponse',
  '2': [
    {'1': 'totlen', '3': 1, '4': 1, '5': 13, '10': 'totlen'},
  ],
};

/// Descriptor for `PingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseDescriptor = $convert.base64Decode(
    'CgxQaW5nUmVzcG9uc2USFgoGdG90bGVuGAEgASgNUgZ0b3RsZW4=');

@$core.Deprecated('Use pluginRequestDescriptor instead')
const PluginRequest$json = {
  '1': 'PluginRequest',
  '2': [
    {'1': 'subcommand', '3': 1, '4': 1, '5': 14, '6': '.cln.PluginSubcommand', '10': 'subcommand'},
    {'1': 'plugin', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'plugin', '17': true},
    {'1': 'directory', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'directory', '17': true},
    {'1': 'options', '3': 4, '4': 3, '5': 9, '10': 'options'},
  ],
  '8': [
    {'1': '_plugin'},
    {'1': '_directory'},
  ],
};

/// Descriptor for `PluginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginRequestDescriptor = $convert.base64Decode(
    'Cg1QbHVnaW5SZXF1ZXN0EjUKCnN1YmNvbW1hbmQYASABKA4yFS5jbG4uUGx1Z2luU3ViY29tbW'
    'FuZFIKc3ViY29tbWFuZBIbCgZwbHVnaW4YAiABKAlIAFIGcGx1Z2luiAEBEiEKCWRpcmVjdG9y'
    'eRgDIAEoCUgBUglkaXJlY3RvcnmIAQESGAoHb3B0aW9ucxgEIAMoCVIHb3B0aW9uc0IJCgdfcG'
    'x1Z2luQgwKCl9kaXJlY3Rvcnk=');

@$core.Deprecated('Use pluginResponseDescriptor instead')
const PluginResponse$json = {
  '1': 'PluginResponse',
  '2': [
    {'1': 'command', '3': 1, '4': 1, '5': 14, '6': '.cln.PluginSubcommand', '10': 'command'},
    {'1': 'plugins', '3': 2, '4': 3, '5': 11, '6': '.cln.PluginPlugins', '10': 'plugins'},
    {'1': 'result', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'result', '17': true},
  ],
  '8': [
    {'1': '_result'},
  ],
};

/// Descriptor for `PluginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginResponseDescriptor = $convert.base64Decode(
    'Cg5QbHVnaW5SZXNwb25zZRIvCgdjb21tYW5kGAEgASgOMhUuY2xuLlBsdWdpblN1YmNvbW1hbm'
    'RSB2NvbW1hbmQSLAoHcGx1Z2lucxgCIAMoCzISLmNsbi5QbHVnaW5QbHVnaW5zUgdwbHVnaW5z'
    'EhsKBnJlc3VsdBgDIAEoCUgAUgZyZXN1bHSIAQFCCQoHX3Jlc3VsdA==');

@$core.Deprecated('Use pluginPluginsDescriptor instead')
const PluginPlugins$json = {
  '1': 'PluginPlugins',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
    {'1': 'dynamic', '3': 3, '4': 1, '5': 8, '10': 'dynamic'},
  ],
};

/// Descriptor for `PluginPlugins`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginPluginsDescriptor = $convert.base64Decode(
    'Cg1QbHVnaW5QbHVnaW5zEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGYWN0aXZlGAIgASgIUgZhY3'
    'RpdmUSGAoHZHluYW1pYxgDIAEoCFIHZHluYW1pYw==');

@$core.Deprecated('Use renepaystatusRequestDescriptor instead')
const RenepaystatusRequest$json = {
  '1': 'RenepaystatusRequest',
  '2': [
    {'1': 'invstring', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'invstring', '17': true},
  ],
  '8': [
    {'1': '_invstring'},
  ],
};

/// Descriptor for `RenepaystatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renepaystatusRequestDescriptor = $convert.base64Decode(
    'ChRSZW5lcGF5c3RhdHVzUmVxdWVzdBIhCglpbnZzdHJpbmcYASABKAlIAFIJaW52c3RyaW5niA'
    'EBQgwKCl9pbnZzdHJpbmc=');

@$core.Deprecated('Use renepaystatusResponseDescriptor instead')
const RenepaystatusResponse$json = {
  '1': 'RenepaystatusResponse',
  '2': [
    {'1': 'paystatus', '3': 1, '4': 3, '5': 11, '6': '.cln.RenepaystatusPaystatus', '10': 'paystatus'},
  ],
};

/// Descriptor for `RenepaystatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renepaystatusResponseDescriptor = $convert.base64Decode(
    'ChVSZW5lcGF5c3RhdHVzUmVzcG9uc2USOQoJcGF5c3RhdHVzGAEgAygLMhsuY2xuLlJlbmVwYX'
    'lzdGF0dXNQYXlzdGF0dXNSCXBheXN0YXR1cw==');

@$core.Deprecated('Use renepaystatusPaystatusDescriptor instead')
const RenepaystatusPaystatus$json = {
  '1': 'RenepaystatusPaystatus',
  '2': [
    {'1': 'bolt11', '3': 1, '4': 1, '5': 9, '10': 'bolt11'},
    {'1': 'payment_preimage', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'paymentPreimage', '17': true},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 1, '10': 'createdAt'},
    {'1': 'groupid', '3': 5, '4': 1, '5': 13, '10': 'groupid'},
    {'1': 'parts', '3': 6, '4': 1, '5': 13, '9': 1, '10': 'parts', '17': true},
    {'1': 'amount_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'amount_sent_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '9': 2, '10': 'amountSentMsat', '17': true},
    {'1': 'status', '3': 9, '4': 1, '5': 14, '6': '.cln.RenepaystatusPaystatus.RenepaystatusPaystatusStatus', '10': 'status'},
    {'1': 'destination', '3': 10, '4': 1, '5': 12, '9': 3, '10': 'destination', '17': true},
    {'1': 'notes', '3': 11, '4': 3, '5': 9, '10': 'notes'},
  ],
  '4': [RenepaystatusPaystatus_RenepaystatusPaystatusStatus$json],
  '8': [
    {'1': '_payment_preimage'},
    {'1': '_parts'},
    {'1': '_amount_sent_msat'},
    {'1': '_destination'},
  ],
};

@$core.Deprecated('Use renepaystatusPaystatusDescriptor instead')
const RenepaystatusPaystatus_RenepaystatusPaystatusStatus$json = {
  '1': 'RenepaystatusPaystatusStatus',
  '2': [
    {'1': 'COMPLETE', '2': 0},
    {'1': 'PENDING', '2': 1},
    {'1': 'FAILED', '2': 2},
  ],
};

/// Descriptor for `RenepaystatusPaystatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renepaystatusPaystatusDescriptor = $convert.base64Decode(
    'ChZSZW5lcGF5c3RhdHVzUGF5c3RhdHVzEhYKBmJvbHQxMRgBIAEoCVIGYm9sdDExEi4KEHBheW'
    '1lbnRfcHJlaW1hZ2UYAiABKAxIAFIPcGF5bWVudFByZWltYWdliAEBEiEKDHBheW1lbnRfaGFz'
    'aBgDIAEoDFILcGF5bWVudEhhc2gSHQoKY3JlYXRlZF9hdBgEIAEoAVIJY3JlYXRlZEF0EhgKB2'
    'dyb3VwaWQYBSABKA1SB2dyb3VwaWQSGQoFcGFydHMYBiABKA1IAVIFcGFydHOIAQESLAoLYW1v'
    'dW50X21zYXQYByABKAsyCy5jbG4uQW1vdW50UgphbW91bnRNc2F0EjoKEGFtb3VudF9zZW50X2'
    '1zYXQYCCABKAsyCy5jbG4uQW1vdW50SAJSDmFtb3VudFNlbnRNc2F0iAEBElAKBnN0YXR1cxgJ'
    'IAEoDjI4LmNsbi5SZW5lcGF5c3RhdHVzUGF5c3RhdHVzLlJlbmVwYXlzdGF0dXNQYXlzdGF0dX'
    'NTdGF0dXNSBnN0YXR1cxIlCgtkZXN0aW5hdGlvbhgKIAEoDEgDUgtkZXN0aW5hdGlvbogBARIU'
    'CgVub3RlcxgLIAMoCVIFbm90ZXMiRQocUmVuZXBheXN0YXR1c1BheXN0YXR1c1N0YXR1cxIMCg'
    'hDT01QTEVURRAAEgsKB1BFTkRJTkcQARIKCgZGQUlMRUQQAkITChFfcGF5bWVudF9wcmVpbWFn'
    'ZUIICgZfcGFydHNCEwoRX2Ftb3VudF9zZW50X21zYXRCDgoMX2Rlc3RpbmF0aW9u');

@$core.Deprecated('Use renepayRequestDescriptor instead')
const RenepayRequest$json = {
  '1': 'RenepayRequest',
  '2': [
    {'1': 'invstring', '3': 1, '4': 1, '5': 9, '10': 'invstring'},
    {'1': 'amount_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'maxfee', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'maxfee', '17': true},
    {'1': 'maxdelay', '3': 4, '4': 1, '5': 13, '9': 2, '10': 'maxdelay', '17': true},
    {'1': 'retry_for', '3': 5, '4': 1, '5': 13, '9': 3, '10': 'retryFor', '17': true},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '9': 4, '10': 'description', '17': true},
    {'1': 'label', '3': 7, '4': 1, '5': 9, '9': 5, '10': 'label', '17': true},
    {'1': 'dev_use_shadow', '3': 8, '4': 1, '5': 8, '9': 6, '10': 'devUseShadow', '17': true},
    {'1': 'exclude', '3': 9, '4': 3, '5': 9, '10': 'exclude'},
  ],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_maxfee'},
    {'1': '_maxdelay'},
    {'1': '_retry_for'},
    {'1': '_description'},
    {'1': '_label'},
    {'1': '_dev_use_shadow'},
  ],
};

/// Descriptor for `RenepayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renepayRequestDescriptor = $convert.base64Decode(
    'Cg5SZW5lcGF5UmVxdWVzdBIcCglpbnZzdHJpbmcYASABKAlSCWludnN0cmluZxIxCgthbW91bn'
    'RfbXNhdBgCIAEoCzILLmNsbi5BbW91bnRIAFIKYW1vdW50TXNhdIgBARIoCgZtYXhmZWUYAyAB'
    'KAsyCy5jbG4uQW1vdW50SAFSBm1heGZlZYgBARIfCghtYXhkZWxheRgEIAEoDUgCUghtYXhkZW'
    'xheYgBARIgCglyZXRyeV9mb3IYBSABKA1IA1IIcmV0cnlGb3KIAQESJQoLZGVzY3JpcHRpb24Y'
    'BiABKAlIBFILZGVzY3JpcHRpb26IAQESGQoFbGFiZWwYByABKAlIBVIFbGFiZWyIAQESKQoOZG'
    'V2X3VzZV9zaGFkb3cYCCABKAhIBlIMZGV2VXNlU2hhZG93iAEBEhgKB2V4Y2x1ZGUYCSADKAlS'
    'B2V4Y2x1ZGVCDgoMX2Ftb3VudF9tc2F0QgkKB19tYXhmZWVCCwoJX21heGRlbGF5QgwKCl9yZX'
    'RyeV9mb3JCDgoMX2Rlc2NyaXB0aW9uQggKBl9sYWJlbEIRCg9fZGV2X3VzZV9zaGFkb3c=');

@$core.Deprecated('Use renepayResponseDescriptor instead')
const RenepayResponse$json = {
  '1': 'RenepayResponse',
  '2': [
    {'1': 'payment_preimage', '3': 1, '4': 1, '5': 12, '10': 'paymentPreimage'},
    {'1': 'payment_hash', '3': 2, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 1, '10': 'createdAt'},
    {'1': 'parts', '3': 4, '4': 1, '5': 13, '10': 'parts'},
    {'1': 'amount_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
    {'1': 'amount_sent_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountSentMsat'},
    {'1': 'status', '3': 7, '4': 1, '5': 14, '6': '.cln.RenepayResponse.RenepayStatus', '10': 'status'},
    {'1': 'destination', '3': 8, '4': 1, '5': 12, '9': 0, '10': 'destination', '17': true},
  ],
  '4': [RenepayResponse_RenepayStatus$json],
  '8': [
    {'1': '_destination'},
  ],
};

@$core.Deprecated('Use renepayResponseDescriptor instead')
const RenepayResponse_RenepayStatus$json = {
  '1': 'RenepayStatus',
  '2': [
    {'1': 'COMPLETE', '2': 0},
    {'1': 'PENDING', '2': 1},
    {'1': 'FAILED', '2': 2},
  ],
};

/// Descriptor for `RenepayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renepayResponseDescriptor = $convert.base64Decode(
    'Cg9SZW5lcGF5UmVzcG9uc2USKQoQcGF5bWVudF9wcmVpbWFnZRgBIAEoDFIPcGF5bWVudFByZW'
    'ltYWdlEiEKDHBheW1lbnRfaGFzaBgCIAEoDFILcGF5bWVudEhhc2gSHQoKY3JlYXRlZF9hdBgD'
    'IAEoAVIJY3JlYXRlZEF0EhQKBXBhcnRzGAQgASgNUgVwYXJ0cxIsCgthbW91bnRfbXNhdBgFIA'
    'EoCzILLmNsbi5BbW91bnRSCmFtb3VudE1zYXQSNQoQYW1vdW50X3NlbnRfbXNhdBgGIAEoCzIL'
    'LmNsbi5BbW91bnRSDmFtb3VudFNlbnRNc2F0EjoKBnN0YXR1cxgHIAEoDjIiLmNsbi5SZW5lcG'
    'F5UmVzcG9uc2UuUmVuZXBheVN0YXR1c1IGc3RhdHVzEiUKC2Rlc3RpbmF0aW9uGAggASgMSABS'
    'C2Rlc3RpbmF0aW9uiAEBIjYKDVJlbmVwYXlTdGF0dXMSDAoIQ09NUExFVEUQABILCgdQRU5ESU'
    '5HEAESCgoGRkFJTEVEEAJCDgoMX2Rlc3RpbmF0aW9u');

@$core.Deprecated('Use reserveinputsRequestDescriptor instead')
const ReserveinputsRequest$json = {
  '1': 'ReserveinputsRequest',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'exclusive', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'exclusive', '17': true},
    {'1': 'reserve', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'reserve', '17': true},
  ],
  '8': [
    {'1': '_exclusive'},
    {'1': '_reserve'},
  ],
};

/// Descriptor for `ReserveinputsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reserveinputsRequestDescriptor = $convert.base64Decode(
    'ChRSZXNlcnZlaW5wdXRzUmVxdWVzdBISCgRwc2J0GAEgASgJUgRwc2J0EiEKCWV4Y2x1c2l2ZR'
    'gCIAEoCEgAUglleGNsdXNpdmWIAQESHQoHcmVzZXJ2ZRgDIAEoDUgBUgdyZXNlcnZliAEBQgwK'
    'Cl9leGNsdXNpdmVCCgoIX3Jlc2VydmU=');

@$core.Deprecated('Use reserveinputsResponseDescriptor instead')
const ReserveinputsResponse$json = {
  '1': 'ReserveinputsResponse',
  '2': [
    {'1': 'reservations', '3': 1, '4': 3, '5': 11, '6': '.cln.ReserveinputsReservations', '10': 'reservations'},
  ],
};

/// Descriptor for `ReserveinputsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reserveinputsResponseDescriptor = $convert.base64Decode(
    'ChVSZXNlcnZlaW5wdXRzUmVzcG9uc2USQgoMcmVzZXJ2YXRpb25zGAEgAygLMh4uY2xuLlJlc2'
    'VydmVpbnB1dHNSZXNlcnZhdGlvbnNSDHJlc2VydmF0aW9ucw==');

@$core.Deprecated('Use reserveinputsReservationsDescriptor instead')
const ReserveinputsReservations$json = {
  '1': 'ReserveinputsReservations',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'vout', '3': 2, '4': 1, '5': 13, '10': 'vout'},
    {'1': 'was_reserved', '3': 3, '4': 1, '5': 8, '10': 'wasReserved'},
    {'1': 'reserved', '3': 4, '4': 1, '5': 8, '10': 'reserved'},
    {'1': 'reserved_to_block', '3': 5, '4': 1, '5': 13, '10': 'reservedToBlock'},
  ],
};

/// Descriptor for `ReserveinputsReservations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reserveinputsReservationsDescriptor = $convert.base64Decode(
    'ChlSZXNlcnZlaW5wdXRzUmVzZXJ2YXRpb25zEhIKBHR4aWQYASABKAxSBHR4aWQSEgoEdm91dB'
    'gCIAEoDVIEdm91dBIhCgx3YXNfcmVzZXJ2ZWQYAyABKAhSC3dhc1Jlc2VydmVkEhoKCHJlc2Vy'
    'dmVkGAQgASgIUghyZXNlcnZlZBIqChFyZXNlcnZlZF90b19ibG9jaxgFIAEoDVIPcmVzZXJ2ZW'
    'RUb0Jsb2Nr');

@$core.Deprecated('Use sendcustommsgRequestDescriptor instead')
const SendcustommsgRequest$json = {
  '1': 'SendcustommsgRequest',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 12, '10': 'nodeId'},
    {'1': 'msg', '3': 2, '4': 1, '5': 12, '10': 'msg'},
  ],
};

/// Descriptor for `SendcustommsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendcustommsgRequestDescriptor = $convert.base64Decode(
    'ChRTZW5kY3VzdG9tbXNnUmVxdWVzdBIXCgdub2RlX2lkGAEgASgMUgZub2RlSWQSEAoDbXNnGA'
    'IgASgMUgNtc2c=');

@$core.Deprecated('Use sendcustommsgResponseDescriptor instead')
const SendcustommsgResponse$json = {
  '1': 'SendcustommsgResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `SendcustommsgResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendcustommsgResponseDescriptor = $convert.base64Decode(
    'ChVTZW5kY3VzdG9tbXNnUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXM=');

@$core.Deprecated('Use sendinvoiceRequestDescriptor instead')
const SendinvoiceRequest$json = {
  '1': 'SendinvoiceRequest',
  '2': [
    {'1': 'invreq', '3': 1, '4': 1, '5': 9, '10': 'invreq'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    {'1': 'amount_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'timeout', '3': 4, '4': 1, '5': 13, '9': 1, '10': 'timeout', '17': true},
    {'1': 'quantity', '3': 5, '4': 1, '5': 4, '9': 2, '10': 'quantity', '17': true},
  ],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_timeout'},
    {'1': '_quantity'},
  ],
};

/// Descriptor for `SendinvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendinvoiceRequestDescriptor = $convert.base64Decode(
    'ChJTZW5kaW52b2ljZVJlcXVlc3QSFgoGaW52cmVxGAEgASgJUgZpbnZyZXESFAoFbGFiZWwYAi'
    'ABKAlSBWxhYmVsEjEKC2Ftb3VudF9tc2F0GAMgASgLMgsuY2xuLkFtb3VudEgAUgphbW91bnRN'
    'c2F0iAEBEh0KB3RpbWVvdXQYBCABKA1IAVIHdGltZW91dIgBARIfCghxdWFudGl0eRgFIAEoBE'
    'gCUghxdWFudGl0eYgBAUIOCgxfYW1vdW50X21zYXRCCgoIX3RpbWVvdXRCCwoJX3F1YW50aXR5');

@$core.Deprecated('Use sendinvoiceResponseDescriptor instead')
const SendinvoiceResponse$json = {
  '1': 'SendinvoiceResponse',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.cln.SendinvoiceResponse.SendinvoiceStatus', '10': 'status'},
    {'1': 'expires_at', '3': 5, '4': 1, '5': 4, '10': 'expiresAt'},
    {'1': 'amount_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'amountMsat', '17': true},
    {'1': 'bolt12', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'bolt12', '17': true},
    {'1': 'created_index', '3': 8, '4': 1, '5': 4, '9': 2, '10': 'createdIndex', '17': true},
    {'1': 'updated_index', '3': 9, '4': 1, '5': 4, '9': 3, '10': 'updatedIndex', '17': true},
    {'1': 'pay_index', '3': 10, '4': 1, '5': 4, '9': 4, '10': 'payIndex', '17': true},
    {'1': 'amount_received_msat', '3': 11, '4': 1, '5': 11, '6': '.cln.Amount', '9': 5, '10': 'amountReceivedMsat', '17': true},
    {'1': 'paid_at', '3': 12, '4': 1, '5': 4, '9': 6, '10': 'paidAt', '17': true},
    {'1': 'payment_preimage', '3': 13, '4': 1, '5': 12, '9': 7, '10': 'paymentPreimage', '17': true},
  ],
  '4': [SendinvoiceResponse_SendinvoiceStatus$json],
  '8': [
    {'1': '_amount_msat'},
    {'1': '_bolt12'},
    {'1': '_created_index'},
    {'1': '_updated_index'},
    {'1': '_pay_index'},
    {'1': '_amount_received_msat'},
    {'1': '_paid_at'},
    {'1': '_payment_preimage'},
  ],
};

@$core.Deprecated('Use sendinvoiceResponseDescriptor instead')
const SendinvoiceResponse_SendinvoiceStatus$json = {
  '1': 'SendinvoiceStatus',
  '2': [
    {'1': 'UNPAID', '2': 0},
    {'1': 'PAID', '2': 1},
    {'1': 'EXPIRED', '2': 2},
  ],
};

/// Descriptor for `SendinvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendinvoiceResponseDescriptor = $convert.base64Decode(
    'ChNTZW5kaW52b2ljZVJlc3BvbnNlEhQKBWxhYmVsGAEgASgJUgVsYWJlbBIgCgtkZXNjcmlwdG'
    'lvbhgCIAEoCVILZGVzY3JpcHRpb24SIQoMcGF5bWVudF9oYXNoGAMgASgMUgtwYXltZW50SGFz'
    'aBJCCgZzdGF0dXMYBCABKA4yKi5jbG4uU2VuZGludm9pY2VSZXNwb25zZS5TZW5kaW52b2ljZV'
    'N0YXR1c1IGc3RhdHVzEh0KCmV4cGlyZXNfYXQYBSABKARSCWV4cGlyZXNBdBIxCgthbW91bnRf'
    'bXNhdBgGIAEoCzILLmNsbi5BbW91bnRIAFIKYW1vdW50TXNhdIgBARIbCgZib2x0MTIYByABKA'
    'lIAVIGYm9sdDEyiAEBEigKDWNyZWF0ZWRfaW5kZXgYCCABKARIAlIMY3JlYXRlZEluZGV4iAEB'
    'EigKDXVwZGF0ZWRfaW5kZXgYCSABKARIA1IMdXBkYXRlZEluZGV4iAEBEiAKCXBheV9pbmRleB'
    'gKIAEoBEgEUghwYXlJbmRleIgBARJCChRhbW91bnRfcmVjZWl2ZWRfbXNhdBgLIAEoCzILLmNs'
    'bi5BbW91bnRIBVISYW1vdW50UmVjZWl2ZWRNc2F0iAEBEhwKB3BhaWRfYXQYDCABKARIBlIGcG'
    'FpZEF0iAEBEi4KEHBheW1lbnRfcHJlaW1hZ2UYDSABKAxIB1IPcGF5bWVudFByZWltYWdliAEB'
    'IjYKEVNlbmRpbnZvaWNlU3RhdHVzEgoKBlVOUEFJRBAAEggKBFBBSUQQARILCgdFWFBJUkVEEA'
    'JCDgoMX2Ftb3VudF9tc2F0QgkKB19ib2x0MTJCEAoOX2NyZWF0ZWRfaW5kZXhCEAoOX3VwZGF0'
    'ZWRfaW5kZXhCDAoKX3BheV9pbmRleEIXChVfYW1vdW50X3JlY2VpdmVkX21zYXRCCgoIX3BhaW'
    'RfYXRCEwoRX3BheW1lbnRfcHJlaW1hZ2U=');

@$core.Deprecated('Use setchannelRequestDescriptor instead')
const SetchannelRequest$json = {
  '1': 'SetchannelRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'feebase', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'feebase', '17': true},
    {'1': 'feeppm', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'feeppm', '17': true},
    {'1': 'htlcmin', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '9': 2, '10': 'htlcmin', '17': true},
    {'1': 'htlcmax', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 3, '10': 'htlcmax', '17': true},
    {'1': 'enforcedelay', '3': 6, '4': 1, '5': 13, '9': 4, '10': 'enforcedelay', '17': true},
    {'1': 'ignorefeelimits', '3': 7, '4': 1, '5': 8, '9': 5, '10': 'ignorefeelimits', '17': true},
  ],
  '8': [
    {'1': '_feebase'},
    {'1': '_feeppm'},
    {'1': '_htlcmin'},
    {'1': '_htlcmax'},
    {'1': '_enforcedelay'},
    {'1': '_ignorefeelimits'},
  ],
};

/// Descriptor for `SetchannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setchannelRequestDescriptor = $convert.base64Decode(
    'ChFTZXRjaGFubmVsUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSKgoHZmVlYmFzZRgCIAEoCzILLm'
    'Nsbi5BbW91bnRIAFIHZmVlYmFzZYgBARIbCgZmZWVwcG0YAyABKA1IAVIGZmVlcHBtiAEBEioK'
    'B2h0bGNtaW4YBCABKAsyCy5jbG4uQW1vdW50SAJSB2h0bGNtaW6IAQESKgoHaHRsY21heBgFIA'
    'EoCzILLmNsbi5BbW91bnRIA1IHaHRsY21heIgBARInCgxlbmZvcmNlZGVsYXkYBiABKA1IBFIM'
    'ZW5mb3JjZWRlbGF5iAEBEi0KD2lnbm9yZWZlZWxpbWl0cxgHIAEoCEgFUg9pZ25vcmVmZWVsaW'
    '1pdHOIAQFCCgoIX2ZlZWJhc2VCCQoHX2ZlZXBwbUIKCghfaHRsY21pbkIKCghfaHRsY21heEIP'
    'Cg1fZW5mb3JjZWRlbGF5QhIKEF9pZ25vcmVmZWVsaW1pdHM=');

@$core.Deprecated('Use setchannelResponseDescriptor instead')
const SetchannelResponse$json = {
  '1': 'SetchannelResponse',
  '2': [
    {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.cln.SetchannelChannels', '10': 'channels'},
  ],
};

/// Descriptor for `SetchannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setchannelResponseDescriptor = $convert.base64Decode(
    'ChJTZXRjaGFubmVsUmVzcG9uc2USMwoIY2hhbm5lbHMYASADKAsyFy5jbG4uU2V0Y2hhbm5lbE'
    'NoYW5uZWxzUghjaGFubmVscw==');

@$core.Deprecated('Use setchannelChannelsDescriptor instead')
const SetchannelChannels$json = {
  '1': 'SetchannelChannels',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 12, '10': 'peerId'},
    {'1': 'channel_id', '3': 2, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'short_channel_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'shortChannelId', '17': true},
    {'1': 'fee_base_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'feeBaseMsat'},
    {'1': 'fee_proportional_millionths', '3': 5, '4': 1, '5': 13, '10': 'feeProportionalMillionths'},
    {'1': 'minimum_htlc_out_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'minimumHtlcOutMsat'},
    {'1': 'warning_htlcmin_too_low', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'warningHtlcminTooLow', '17': true},
    {'1': 'maximum_htlc_out_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'maximumHtlcOutMsat'},
    {'1': 'warning_htlcmax_too_high', '3': 9, '4': 1, '5': 9, '9': 2, '10': 'warningHtlcmaxTooHigh', '17': true},
    {'1': 'ignore_fee_limits', '3': 10, '4': 1, '5': 8, '9': 3, '10': 'ignoreFeeLimits', '17': true},
  ],
  '8': [
    {'1': '_short_channel_id'},
    {'1': '_warning_htlcmin_too_low'},
    {'1': '_warning_htlcmax_too_high'},
    {'1': '_ignore_fee_limits'},
  ],
};

/// Descriptor for `SetchannelChannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setchannelChannelsDescriptor = $convert.base64Decode(
    'ChJTZXRjaGFubmVsQ2hhbm5lbHMSFwoHcGVlcl9pZBgBIAEoDFIGcGVlcklkEh0KCmNoYW5uZW'
    'xfaWQYAiABKAxSCWNoYW5uZWxJZBItChBzaG9ydF9jaGFubmVsX2lkGAMgASgJSABSDnNob3J0'
    'Q2hhbm5lbElkiAEBEi8KDWZlZV9iYXNlX21zYXQYBCABKAsyCy5jbG4uQW1vdW50UgtmZWVCYX'
    'NlTXNhdBI+ChtmZWVfcHJvcG9ydGlvbmFsX21pbGxpb250aHMYBSABKA1SGWZlZVByb3BvcnRp'
    'b25hbE1pbGxpb250aHMSPgoVbWluaW11bV9odGxjX291dF9tc2F0GAYgASgLMgsuY2xuLkFtb3'
    'VudFISbWluaW11bUh0bGNPdXRNc2F0EjoKF3dhcm5pbmdfaHRsY21pbl90b29fbG93GAcgASgJ'
    'SAFSFHdhcm5pbmdIdGxjbWluVG9vTG93iAEBEj4KFW1heGltdW1faHRsY19vdXRfbXNhdBgIIA'
    'EoCzILLmNsbi5BbW91bnRSEm1heGltdW1IdGxjT3V0TXNhdBI8Chh3YXJuaW5nX2h0bGNtYXhf'
    'dG9vX2hpZ2gYCSABKAlIAlIVd2FybmluZ0h0bGNtYXhUb29IaWdoiAEBEi8KEWlnbm9yZV9mZW'
    'VfbGltaXRzGAogASgISANSD2lnbm9yZUZlZUxpbWl0c4gBAUITChFfc2hvcnRfY2hhbm5lbF9p'
    'ZEIaChhfd2FybmluZ19odGxjbWluX3Rvb19sb3dCGwoZX3dhcm5pbmdfaHRsY21heF90b29faG'
    'lnaEIUChJfaWdub3JlX2ZlZV9saW1pdHM=');

@$core.Deprecated('Use setconfigRequestDescriptor instead')
const SetconfigRequest$json = {
  '1': 'SetconfigRequest',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 9, '10': 'config'},
    {'1': 'val', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'val', '17': true},
  ],
  '8': [
    {'1': '_val'},
  ],
};

/// Descriptor for `SetconfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setconfigRequestDescriptor = $convert.base64Decode(
    'ChBTZXRjb25maWdSZXF1ZXN0EhYKBmNvbmZpZxgBIAEoCVIGY29uZmlnEhUKA3ZhbBgCIAEoCU'
    'gAUgN2YWyIAQFCBgoEX3ZhbA==');

@$core.Deprecated('Use setconfigResponseDescriptor instead')
const SetconfigResponse$json = {
  '1': 'SetconfigResponse',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.cln.SetconfigConfig', '10': 'config'},
  ],
};

/// Descriptor for `SetconfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setconfigResponseDescriptor = $convert.base64Decode(
    'ChFTZXRjb25maWdSZXNwb25zZRIsCgZjb25maWcYASABKAsyFC5jbG4uU2V0Y29uZmlnQ29uZm'
    'lnUgZjb25maWc=');

@$core.Deprecated('Use setconfigConfigDescriptor instead')
const SetconfigConfig$json = {
  '1': 'SetconfigConfig',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 9, '10': 'config'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
    {'1': 'plugin', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'plugin', '17': true},
    {'1': 'dynamic', '3': 4, '4': 1, '5': 8, '10': 'dynamic'},
    {'1': 'set', '3': 5, '4': 1, '5': 8, '9': 1, '10': 'set', '17': true},
    {'1': 'value_str', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'valueStr', '17': true},
    {'1': 'value_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '9': 3, '10': 'valueMsat', '17': true},
    {'1': 'value_int', '3': 8, '4': 1, '5': 18, '9': 4, '10': 'valueInt', '17': true},
    {'1': 'value_bool', '3': 9, '4': 1, '5': 8, '9': 5, '10': 'valueBool', '17': true},
  ],
  '8': [
    {'1': '_plugin'},
    {'1': '_set'},
    {'1': '_value_str'},
    {'1': '_value_msat'},
    {'1': '_value_int'},
    {'1': '_value_bool'},
  ],
};

/// Descriptor for `SetconfigConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setconfigConfigDescriptor = $convert.base64Decode(
    'Cg9TZXRjb25maWdDb25maWcSFgoGY29uZmlnGAEgASgJUgZjb25maWcSFgoGc291cmNlGAIgAS'
    'gJUgZzb3VyY2USGwoGcGx1Z2luGAMgASgJSABSBnBsdWdpbogBARIYCgdkeW5hbWljGAQgASgI'
    'UgdkeW5hbWljEhUKA3NldBgFIAEoCEgBUgNzZXSIAQESIAoJdmFsdWVfc3RyGAYgASgJSAJSCH'
    'ZhbHVlU3RyiAEBEi8KCnZhbHVlX21zYXQYByABKAsyCy5jbG4uQW1vdW50SANSCXZhbHVlTXNh'
    'dIgBARIgCgl2YWx1ZV9pbnQYCCABKBJIBFIIdmFsdWVJbnSIAQESIgoKdmFsdWVfYm9vbBgJIA'
    'EoCEgFUgl2YWx1ZUJvb2yIAQFCCQoHX3BsdWdpbkIGCgRfc2V0QgwKCl92YWx1ZV9zdHJCDQoL'
    'X3ZhbHVlX21zYXRCDAoKX3ZhbHVlX2ludEINCgtfdmFsdWVfYm9vbA==');

@$core.Deprecated('Use setpsbtversionRequestDescriptor instead')
const SetpsbtversionRequest$json = {
  '1': 'SetpsbtversionRequest',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'version', '3': 2, '4': 1, '5': 13, '10': 'version'},
  ],
};

/// Descriptor for `SetpsbtversionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setpsbtversionRequestDescriptor = $convert.base64Decode(
    'ChVTZXRwc2J0dmVyc2lvblJlcXVlc3QSEgoEcHNidBgBIAEoCVIEcHNidBIYCgd2ZXJzaW9uGA'
    'IgASgNUgd2ZXJzaW9u');

@$core.Deprecated('Use setpsbtversionResponseDescriptor instead')
const SetpsbtversionResponse$json = {
  '1': 'SetpsbtversionResponse',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
  ],
};

/// Descriptor for `SetpsbtversionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setpsbtversionResponseDescriptor = $convert.base64Decode(
    'ChZTZXRwc2J0dmVyc2lvblJlc3BvbnNlEhIKBHBzYnQYASABKAlSBHBzYnQ=');

@$core.Deprecated('Use signinvoiceRequestDescriptor instead')
const SigninvoiceRequest$json = {
  '1': 'SigninvoiceRequest',
  '2': [
    {'1': 'invstring', '3': 1, '4': 1, '5': 9, '10': 'invstring'},
  ],
};

/// Descriptor for `SigninvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signinvoiceRequestDescriptor = $convert.base64Decode(
    'ChJTaWduaW52b2ljZVJlcXVlc3QSHAoJaW52c3RyaW5nGAEgASgJUglpbnZzdHJpbmc=');

@$core.Deprecated('Use signinvoiceResponseDescriptor instead')
const SigninvoiceResponse$json = {
  '1': 'SigninvoiceResponse',
  '2': [
    {'1': 'bolt11', '3': 1, '4': 1, '5': 9, '10': 'bolt11'},
  ],
};

/// Descriptor for `SigninvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signinvoiceResponseDescriptor = $convert.base64Decode(
    'ChNTaWduaW52b2ljZVJlc3BvbnNlEhYKBmJvbHQxMRgBIAEoCVIGYm9sdDEx');

@$core.Deprecated('Use signmessageRequestDescriptor instead')
const SignmessageRequest$json = {
  '1': 'SignmessageRequest',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SignmessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signmessageRequestDescriptor = $convert.base64Decode(
    'ChJTaWdubWVzc2FnZVJlcXVlc3QSGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use signmessageResponseDescriptor instead')
const SignmessageResponse$json = {
  '1': 'SignmessageResponse',
  '2': [
    {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
    {'1': 'recid', '3': 2, '4': 1, '5': 12, '10': 'recid'},
    {'1': 'zbase', '3': 3, '4': 1, '5': 9, '10': 'zbase'},
  ],
};

/// Descriptor for `SignmessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signmessageResponseDescriptor = $convert.base64Decode(
    'ChNTaWdubWVzc2FnZVJlc3BvbnNlEhwKCXNpZ25hdHVyZRgBIAEoDFIJc2lnbmF0dXJlEhQKBX'
    'JlY2lkGAIgASgMUgVyZWNpZBIUCgV6YmFzZRgDIAEoCVIFemJhc2U=');

@$core.Deprecated('Use splice_initRequestDescriptor instead')
const Splice_initRequest$json = {
  '1': 'Splice_initRequest',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'relative_amount', '3': 2, '4': 1, '5': 18, '10': 'relativeAmount'},
    {'1': 'initialpsbt', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'initialpsbt', '17': true},
    {'1': 'feerate_per_kw', '3': 4, '4': 1, '5': 13, '9': 1, '10': 'feeratePerKw', '17': true},
    {'1': 'force_feerate', '3': 5, '4': 1, '5': 8, '9': 2, '10': 'forceFeerate', '17': true},
  ],
  '8': [
    {'1': '_initialpsbt'},
    {'1': '_feerate_per_kw'},
    {'1': '_force_feerate'},
  ],
};

/// Descriptor for `Splice_initRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List splice_initRequestDescriptor = $convert.base64Decode(
    'ChJTcGxpY2VfaW5pdFJlcXVlc3QSHQoKY2hhbm5lbF9pZBgBIAEoDFIJY2hhbm5lbElkEicKD3'
    'JlbGF0aXZlX2Ftb3VudBgCIAEoElIOcmVsYXRpdmVBbW91bnQSJQoLaW5pdGlhbHBzYnQYAyAB'
    'KAlIAFILaW5pdGlhbHBzYnSIAQESKQoOZmVlcmF0ZV9wZXJfa3cYBCABKA1IAVIMZmVlcmF0ZV'
    'Blckt3iAEBEigKDWZvcmNlX2ZlZXJhdGUYBSABKAhIAlIMZm9yY2VGZWVyYXRliAEBQg4KDF9p'
    'bml0aWFscHNidEIRCg9fZmVlcmF0ZV9wZXJfa3dCEAoOX2ZvcmNlX2ZlZXJhdGU=');

@$core.Deprecated('Use splice_initResponseDescriptor instead')
const Splice_initResponse$json = {
  '1': 'Splice_initResponse',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
  ],
};

/// Descriptor for `Splice_initResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List splice_initResponseDescriptor = $convert.base64Decode(
    'ChNTcGxpY2VfaW5pdFJlc3BvbnNlEhIKBHBzYnQYASABKAlSBHBzYnQ=');

@$core.Deprecated('Use splice_signedRequestDescriptor instead')
const Splice_signedRequest$json = {
  '1': 'Splice_signedRequest',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'psbt', '3': 2, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'sign_first', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'signFirst', '17': true},
  ],
  '8': [
    {'1': '_sign_first'},
  ],
};

/// Descriptor for `Splice_signedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List splice_signedRequestDescriptor = $convert.base64Decode(
    'ChRTcGxpY2Vfc2lnbmVkUmVxdWVzdBIdCgpjaGFubmVsX2lkGAEgASgMUgljaGFubmVsSWQSEg'
    'oEcHNidBgCIAEoCVIEcHNidBIiCgpzaWduX2ZpcnN0GAMgASgISABSCXNpZ25GaXJzdIgBAUIN'
    'Cgtfc2lnbl9maXJzdA==');

@$core.Deprecated('Use splice_signedResponseDescriptor instead')
const Splice_signedResponse$json = {
  '1': 'Splice_signedResponse',
  '2': [
    {'1': 'tx', '3': 1, '4': 1, '5': 12, '10': 'tx'},
    {'1': 'txid', '3': 2, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'outnum', '3': 3, '4': 1, '5': 13, '9': 0, '10': 'outnum', '17': true},
  ],
  '8': [
    {'1': '_outnum'},
  ],
};

/// Descriptor for `Splice_signedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List splice_signedResponseDescriptor = $convert.base64Decode(
    'ChVTcGxpY2Vfc2lnbmVkUmVzcG9uc2USDgoCdHgYASABKAxSAnR4EhIKBHR4aWQYAiABKAxSBH'
    'R4aWQSGwoGb3V0bnVtGAMgASgNSABSBm91dG51bYgBAUIJCgdfb3V0bnVt');

@$core.Deprecated('Use splice_updateRequestDescriptor instead')
const Splice_updateRequest$json = {
  '1': 'Splice_updateRequest',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
    {'1': 'psbt', '3': 2, '4': 1, '5': 9, '10': 'psbt'},
  ],
};

/// Descriptor for `Splice_updateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List splice_updateRequestDescriptor = $convert.base64Decode(
    'ChRTcGxpY2VfdXBkYXRlUmVxdWVzdBIdCgpjaGFubmVsX2lkGAEgASgMUgljaGFubmVsSWQSEg'
    'oEcHNidBgCIAEoCVIEcHNidA==');

@$core.Deprecated('Use splice_updateResponseDescriptor instead')
const Splice_updateResponse$json = {
  '1': 'Splice_updateResponse',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'commitments_secured', '3': 2, '4': 1, '5': 8, '10': 'commitmentsSecured'},
  ],
};

/// Descriptor for `Splice_updateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List splice_updateResponseDescriptor = $convert.base64Decode(
    'ChVTcGxpY2VfdXBkYXRlUmVzcG9uc2USEgoEcHNidBgBIAEoCVIEcHNidBIvChNjb21taXRtZW'
    '50c19zZWN1cmVkGAIgASgIUhJjb21taXRtZW50c1NlY3VyZWQ=');

@$core.Deprecated('Use unreserveinputsRequestDescriptor instead')
const UnreserveinputsRequest$json = {
  '1': 'UnreserveinputsRequest',
  '2': [
    {'1': 'psbt', '3': 1, '4': 1, '5': 9, '10': 'psbt'},
    {'1': 'reserve', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'reserve', '17': true},
  ],
  '8': [
    {'1': '_reserve'},
  ],
};

/// Descriptor for `UnreserveinputsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unreserveinputsRequestDescriptor = $convert.base64Decode(
    'ChZVbnJlc2VydmVpbnB1dHNSZXF1ZXN0EhIKBHBzYnQYASABKAlSBHBzYnQSHQoHcmVzZXJ2ZR'
    'gCIAEoDUgAUgdyZXNlcnZliAEBQgoKCF9yZXNlcnZl');

@$core.Deprecated('Use unreserveinputsResponseDescriptor instead')
const UnreserveinputsResponse$json = {
  '1': 'UnreserveinputsResponse',
  '2': [
    {'1': 'reservations', '3': 1, '4': 3, '5': 11, '6': '.cln.UnreserveinputsReservations', '10': 'reservations'},
  ],
};

/// Descriptor for `UnreserveinputsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unreserveinputsResponseDescriptor = $convert.base64Decode(
    'ChdVbnJlc2VydmVpbnB1dHNSZXNwb25zZRJECgxyZXNlcnZhdGlvbnMYASADKAsyIC5jbG4uVW'
    '5yZXNlcnZlaW5wdXRzUmVzZXJ2YXRpb25zUgxyZXNlcnZhdGlvbnM=');

@$core.Deprecated('Use unreserveinputsReservationsDescriptor instead')
const UnreserveinputsReservations$json = {
  '1': 'UnreserveinputsReservations',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'vout', '3': 2, '4': 1, '5': 13, '10': 'vout'},
    {'1': 'was_reserved', '3': 3, '4': 1, '5': 8, '10': 'wasReserved'},
    {'1': 'reserved', '3': 4, '4': 1, '5': 8, '10': 'reserved'},
    {'1': 'reserved_to_block', '3': 5, '4': 1, '5': 13, '9': 0, '10': 'reservedToBlock', '17': true},
  ],
  '8': [
    {'1': '_reserved_to_block'},
  ],
};

/// Descriptor for `UnreserveinputsReservations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unreserveinputsReservationsDescriptor = $convert.base64Decode(
    'ChtVbnJlc2VydmVpbnB1dHNSZXNlcnZhdGlvbnMSEgoEdHhpZBgBIAEoDFIEdHhpZBISCgR2b3'
    'V0GAIgASgNUgR2b3V0EiEKDHdhc19yZXNlcnZlZBgDIAEoCFILd2FzUmVzZXJ2ZWQSGgoIcmVz'
    'ZXJ2ZWQYBCABKAhSCHJlc2VydmVkEi8KEXJlc2VydmVkX3RvX2Jsb2NrGAUgASgNSABSD3Jlc2'
    'VydmVkVG9CbG9ja4gBAUIUChJfcmVzZXJ2ZWRfdG9fYmxvY2s=');

@$core.Deprecated('Use upgradewalletRequestDescriptor instead')
const UpgradewalletRequest$json = {
  '1': 'UpgradewalletRequest',
  '2': [
    {'1': 'feerate', '3': 1, '4': 1, '5': 11, '6': '.cln.Feerate', '9': 0, '10': 'feerate', '17': true},
    {'1': 'reservedok', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'reservedok', '17': true},
  ],
  '8': [
    {'1': '_feerate'},
    {'1': '_reservedok'},
  ],
};

/// Descriptor for `UpgradewalletRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradewalletRequestDescriptor = $convert.base64Decode(
    'ChRVcGdyYWRld2FsbGV0UmVxdWVzdBIrCgdmZWVyYXRlGAEgASgLMgwuY2xuLkZlZXJhdGVIAF'
    'IHZmVlcmF0ZYgBARIjCgpyZXNlcnZlZG9rGAIgASgISAFSCnJlc2VydmVkb2uIAQFCCgoIX2Zl'
    'ZXJhdGVCDQoLX3Jlc2VydmVkb2s=');

@$core.Deprecated('Use upgradewalletResponseDescriptor instead')
const UpgradewalletResponse$json = {
  '1': 'UpgradewalletResponse',
  '2': [
    {'1': 'upgraded_outs', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'upgradedOuts', '17': true},
    {'1': 'psbt', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'psbt', '17': true},
    {'1': 'tx', '3': 3, '4': 1, '5': 12, '9': 2, '10': 'tx', '17': true},
    {'1': 'txid', '3': 4, '4': 1, '5': 12, '9': 3, '10': 'txid', '17': true},
  ],
  '8': [
    {'1': '_upgraded_outs'},
    {'1': '_psbt'},
    {'1': '_tx'},
    {'1': '_txid'},
  ],
};

/// Descriptor for `UpgradewalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradewalletResponseDescriptor = $convert.base64Decode(
    'ChVVcGdyYWRld2FsbGV0UmVzcG9uc2USKAoNdXBncmFkZWRfb3V0cxgBIAEoBEgAUgx1cGdyYW'
    'RlZE91dHOIAQESFwoEcHNidBgCIAEoCUgBUgRwc2J0iAEBEhMKAnR4GAMgASgMSAJSAnR4iAEB'
    'EhcKBHR4aWQYBCABKAxIA1IEdHhpZIgBAUIQCg5fdXBncmFkZWRfb3V0c0IHCgVfcHNidEIFCg'
    'NfdHhCBwoFX3R4aWQ=');

@$core.Deprecated('Use waitblockheightRequestDescriptor instead')
const WaitblockheightRequest$json = {
  '1': 'WaitblockheightRequest',
  '2': [
    {'1': 'blockheight', '3': 1, '4': 1, '5': 13, '10': 'blockheight'},
    {'1': 'timeout', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'timeout', '17': true},
  ],
  '8': [
    {'1': '_timeout'},
  ],
};

/// Descriptor for `WaitblockheightRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitblockheightRequestDescriptor = $convert.base64Decode(
    'ChZXYWl0YmxvY2toZWlnaHRSZXF1ZXN0EiAKC2Jsb2NraGVpZ2h0GAEgASgNUgtibG9ja2hlaW'
    'dodBIdCgd0aW1lb3V0GAIgASgNSABSB3RpbWVvdXSIAQFCCgoIX3RpbWVvdXQ=');

@$core.Deprecated('Use waitblockheightResponseDescriptor instead')
const WaitblockheightResponse$json = {
  '1': 'WaitblockheightResponse',
  '2': [
    {'1': 'blockheight', '3': 1, '4': 1, '5': 13, '10': 'blockheight'},
  ],
};

/// Descriptor for `WaitblockheightResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitblockheightResponseDescriptor = $convert.base64Decode(
    'ChdXYWl0YmxvY2toZWlnaHRSZXNwb25zZRIgCgtibG9ja2hlaWdodBgBIAEoDVILYmxvY2toZW'
    'lnaHQ=');

@$core.Deprecated('Use waitRequestDescriptor instead')
const WaitRequest$json = {
  '1': 'WaitRequest',
  '2': [
    {'1': 'subsystem', '3': 1, '4': 1, '5': 14, '6': '.cln.WaitRequest.WaitSubsystem', '10': 'subsystem'},
    {'1': 'indexname', '3': 2, '4': 1, '5': 14, '6': '.cln.WaitRequest.WaitIndexname', '10': 'indexname'},
    {'1': 'nextvalue', '3': 3, '4': 1, '5': 4, '10': 'nextvalue'},
  ],
  '4': [WaitRequest_WaitSubsystem$json, WaitRequest_WaitIndexname$json],
};

@$core.Deprecated('Use waitRequestDescriptor instead')
const WaitRequest_WaitSubsystem$json = {
  '1': 'WaitSubsystem',
  '2': [
    {'1': 'INVOICES', '2': 0},
    {'1': 'FORWARDS', '2': 1},
    {'1': 'SENDPAYS', '2': 2},
  ],
};

@$core.Deprecated('Use waitRequestDescriptor instead')
const WaitRequest_WaitIndexname$json = {
  '1': 'WaitIndexname',
  '2': [
    {'1': 'CREATED', '2': 0},
    {'1': 'UPDATED', '2': 1},
    {'1': 'DELETED', '2': 2},
  ],
};

/// Descriptor for `WaitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitRequestDescriptor = $convert.base64Decode(
    'CgtXYWl0UmVxdWVzdBI8CglzdWJzeXN0ZW0YASABKA4yHi5jbG4uV2FpdFJlcXVlc3QuV2FpdF'
    'N1YnN5c3RlbVIJc3Vic3lzdGVtEjwKCWluZGV4bmFtZRgCIAEoDjIeLmNsbi5XYWl0UmVxdWVz'
    'dC5XYWl0SW5kZXhuYW1lUglpbmRleG5hbWUSHAoJbmV4dHZhbHVlGAMgASgEUgluZXh0dmFsdW'
    'UiOQoNV2FpdFN1YnN5c3RlbRIMCghJTlZPSUNFUxAAEgwKCEZPUldBUkRTEAESDAoIU0VORFBB'
    'WVMQAiI2Cg1XYWl0SW5kZXhuYW1lEgsKB0NSRUFURUQQABILCgdVUERBVEVEEAESCwoHREVMRV'
    'RFRBAC');

@$core.Deprecated('Use waitResponseDescriptor instead')
const WaitResponse$json = {
  '1': 'WaitResponse',
  '2': [
    {'1': 'subsystem', '3': 1, '4': 1, '5': 14, '6': '.cln.WaitResponse.WaitSubsystem', '10': 'subsystem'},
    {'1': 'created', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'created', '17': true},
    {'1': 'updated', '3': 3, '4': 1, '5': 4, '9': 1, '10': 'updated', '17': true},
    {'1': 'deleted', '3': 4, '4': 1, '5': 4, '9': 2, '10': 'deleted', '17': true},
    {'1': 'details', '3': 5, '4': 1, '5': 11, '6': '.cln.WaitDetails', '9': 3, '10': 'details', '17': true},
  ],
  '4': [WaitResponse_WaitSubsystem$json],
  '8': [
    {'1': '_created'},
    {'1': '_updated'},
    {'1': '_deleted'},
    {'1': '_details'},
  ],
};

@$core.Deprecated('Use waitResponseDescriptor instead')
const WaitResponse_WaitSubsystem$json = {
  '1': 'WaitSubsystem',
  '2': [
    {'1': 'INVOICES', '2': 0},
    {'1': 'FORWARDS', '2': 1},
    {'1': 'SENDPAYS', '2': 2},
  ],
};

/// Descriptor for `WaitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitResponseDescriptor = $convert.base64Decode(
    'CgxXYWl0UmVzcG9uc2USPQoJc3Vic3lzdGVtGAEgASgOMh8uY2xuLldhaXRSZXNwb25zZS5XYW'
    'l0U3Vic3lzdGVtUglzdWJzeXN0ZW0SHQoHY3JlYXRlZBgCIAEoBEgAUgdjcmVhdGVkiAEBEh0K'
    'B3VwZGF0ZWQYAyABKARIAVIHdXBkYXRlZIgBARIdCgdkZWxldGVkGAQgASgESAJSB2RlbGV0ZW'
    'SIAQESLwoHZGV0YWlscxgFIAEoCzIQLmNsbi5XYWl0RGV0YWlsc0gDUgdkZXRhaWxziAEBIjkK'
    'DVdhaXRTdWJzeXN0ZW0SDAoISU5WT0lDRVMQABIMCghGT1JXQVJEUxABEgwKCFNFTkRQQVlTEA'
    'JCCgoIX2NyZWF0ZWRCCgoIX3VwZGF0ZWRCCgoIX2RlbGV0ZWRCCgoIX2RldGFpbHM=');

@$core.Deprecated('Use waitDetailsDescriptor instead')
const WaitDetails$json = {
  '1': 'WaitDetails',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.cln.WaitDetails.WaitDetailsStatus', '9': 0, '10': 'status', '17': true},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'label', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'description', '17': true},
    {'1': 'bolt11', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'bolt11', '17': true},
    {'1': 'bolt12', '3': 5, '4': 1, '5': 9, '9': 4, '10': 'bolt12', '17': true},
    {'1': 'partid', '3': 6, '4': 1, '5': 4, '9': 5, '10': 'partid', '17': true},
    {'1': 'groupid', '3': 7, '4': 1, '5': 4, '9': 6, '10': 'groupid', '17': true},
    {'1': 'payment_hash', '3': 8, '4': 1, '5': 12, '9': 7, '10': 'paymentHash', '17': true},
    {'1': 'in_channel', '3': 9, '4': 1, '5': 9, '9': 8, '10': 'inChannel', '17': true},
    {'1': 'in_htlc_id', '3': 10, '4': 1, '5': 4, '9': 9, '10': 'inHtlcId', '17': true},
    {'1': 'in_msat', '3': 11, '4': 1, '5': 11, '6': '.cln.Amount', '9': 10, '10': 'inMsat', '17': true},
    {'1': 'out_channel', '3': 12, '4': 1, '5': 9, '9': 11, '10': 'outChannel', '17': true},
  ],
  '4': [WaitDetails_WaitDetailsStatus$json],
  '8': [
    {'1': '_status'},
    {'1': '_label'},
    {'1': '_description'},
    {'1': '_bolt11'},
    {'1': '_bolt12'},
    {'1': '_partid'},
    {'1': '_groupid'},
    {'1': '_payment_hash'},
    {'1': '_in_channel'},
    {'1': '_in_htlc_id'},
    {'1': '_in_msat'},
    {'1': '_out_channel'},
  ],
};

@$core.Deprecated('Use waitDetailsDescriptor instead')
const WaitDetails_WaitDetailsStatus$json = {
  '1': 'WaitDetailsStatus',
  '2': [
    {'1': 'UNPAID', '2': 0},
    {'1': 'PAID', '2': 1},
    {'1': 'EXPIRED', '2': 2},
    {'1': 'PENDING', '2': 3},
    {'1': 'FAILED', '2': 4},
    {'1': 'COMPLETE', '2': 5},
    {'1': 'OFFERED', '2': 6},
    {'1': 'SETTLED', '2': 7},
    {'1': 'LOCAL_FAILED', '2': 8},
  ],
};

/// Descriptor for `WaitDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waitDetailsDescriptor = $convert.base64Decode(
    'CgtXYWl0RGV0YWlscxI/CgZzdGF0dXMYASABKA4yIi5jbG4uV2FpdERldGFpbHMuV2FpdERldG'
    'FpbHNTdGF0dXNIAFIGc3RhdHVziAEBEhkKBWxhYmVsGAIgASgJSAFSBWxhYmVsiAEBEiUKC2Rl'
    'c2NyaXB0aW9uGAMgASgJSAJSC2Rlc2NyaXB0aW9uiAEBEhsKBmJvbHQxMRgEIAEoCUgDUgZib2'
    'x0MTGIAQESGwoGYm9sdDEyGAUgASgJSARSBmJvbHQxMogBARIbCgZwYXJ0aWQYBiABKARIBVIG'
    'cGFydGlkiAEBEh0KB2dyb3VwaWQYByABKARIBlIHZ3JvdXBpZIgBARImCgxwYXltZW50X2hhc2'
    'gYCCABKAxIB1ILcGF5bWVudEhhc2iIAQESIgoKaW5fY2hhbm5lbBgJIAEoCUgIUglpbkNoYW5u'
    'ZWyIAQESIQoKaW5faHRsY19pZBgKIAEoBEgJUghpbkh0bGNJZIgBARIpCgdpbl9tc2F0GAsgAS'
    'gLMgsuY2xuLkFtb3VudEgKUgZpbk1zYXSIAQESJAoLb3V0X2NoYW5uZWwYDCABKAlIC1IKb3V0'
    'Q2hhbm5lbIgBASKJAQoRV2FpdERldGFpbHNTdGF0dXMSCgoGVU5QQUlEEAASCAoEUEFJRBABEg'
    'sKB0VYUElSRUQQAhILCgdQRU5ESU5HEAMSCgoGRkFJTEVEEAQSDAoIQ09NUExFVEUQBRILCgdP'
    'RkZFUkVEEAYSCwoHU0VUVExFRBAHEhAKDExPQ0FMX0ZBSUxFRBAIQgkKB19zdGF0dXNCCAoGX2'
    'xhYmVsQg4KDF9kZXNjcmlwdGlvbkIJCgdfYm9sdDExQgkKB19ib2x0MTJCCQoHX3BhcnRpZEIK'
    'CghfZ3JvdXBpZEIPCg1fcGF5bWVudF9oYXNoQg0KC19pbl9jaGFubmVsQg0KC19pbl9odGxjX2'
    'lkQgoKCF9pbl9tc2F0Qg4KDF9vdXRfY2hhbm5lbA==');

@$core.Deprecated('Use listconfigsRequestDescriptor instead')
const ListconfigsRequest$json = {
  '1': 'ListconfigsRequest',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'config', '17': true},
  ],
  '8': [
    {'1': '_config'},
  ],
};

/// Descriptor for `ListconfigsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0Y29uZmlnc1JlcXVlc3QSGwoGY29uZmlnGAEgASgJSABSBmNvbmZpZ4gBAUIJCgdfY2'
    '9uZmln');

@$core.Deprecated('Use listconfigsResponseDescriptor instead')
const ListconfigsResponse$json = {
  '1': 'ListconfigsResponse',
  '2': [
    {'1': 'configs', '3': 1, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigs', '9': 0, '10': 'configs', '17': true},
    {'1': 'plugins', '3': 3, '4': 3, '5': 11, '6': '.cln.ListconfigsPlugins', '10': 'plugins'},
    {'1': 'important_plugins', '3': 4, '4': 3, '5': 11, '6': '.cln.ListconfigsImportantplugins', '10': 'importantPlugins'},
    {'1': 'conf', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'conf', '17': true},
    {'1': 'lightning_dir', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'lightningDir', '17': true},
    {'1': 'network', '3': 7, '4': 1, '5': 9, '9': 3, '10': 'network', '17': true},
    {'1': 'allow_deprecated_apis', '3': 8, '4': 1, '5': 8, '9': 4, '10': 'allowDeprecatedApis', '17': true},
    {'1': 'rpc_file', '3': 9, '4': 1, '5': 9, '9': 5, '10': 'rpcFile', '17': true},
    {'1': 'disable_plugin', '3': 10, '4': 3, '5': 9, '10': 'disablePlugin'},
    {'1': 'bookkeeper_dir', '3': 11, '4': 1, '5': 9, '9': 6, '10': 'bookkeeperDir', '17': true},
    {'1': 'bookkeeper_db', '3': 12, '4': 1, '5': 9, '9': 7, '10': 'bookkeeperDb', '17': true},
    {'1': 'always_use_proxy', '3': 13, '4': 1, '5': 8, '9': 8, '10': 'alwaysUseProxy', '17': true},
    {'1': 'daemon', '3': 14, '4': 1, '5': 8, '9': 9, '10': 'daemon', '17': true},
    {'1': 'wallet', '3': 15, '4': 1, '5': 9, '9': 10, '10': 'wallet', '17': true},
    {'1': 'large_channels', '3': 16, '4': 1, '5': 8, '9': 11, '10': 'largeChannels', '17': true},
    {'1': 'experimental_dual_fund', '3': 17, '4': 1, '5': 8, '9': 12, '10': 'experimentalDualFund', '17': true},
    {'1': 'experimental_splicing', '3': 18, '4': 1, '5': 8, '9': 13, '10': 'experimentalSplicing', '17': true},
    {'1': 'experimental_onion_messages', '3': 19, '4': 1, '5': 8, '9': 14, '10': 'experimentalOnionMessages', '17': true},
    {'1': 'experimental_offers', '3': 20, '4': 1, '5': 8, '9': 15, '10': 'experimentalOffers', '17': true},
    {'1': 'experimental_shutdown_wrong_funding', '3': 21, '4': 1, '5': 8, '9': 16, '10': 'experimentalShutdownWrongFunding', '17': true},
    {'1': 'experimental_peer_storage', '3': 22, '4': 1, '5': 8, '9': 17, '10': 'experimentalPeerStorage', '17': true},
    {'1': 'experimental_quiesce', '3': 23, '4': 1, '5': 8, '9': 18, '10': 'experimentalQuiesce', '17': true},
    {'1': 'experimental_upgrade_protocol', '3': 24, '4': 1, '5': 8, '9': 19, '10': 'experimentalUpgradeProtocol', '17': true},
    {'1': 'invoices_onchain_fallback', '3': 25, '4': 1, '5': 8, '9': 20, '10': 'invoicesOnchainFallback', '17': true},
    {'1': 'database_upgrade', '3': 26, '4': 1, '5': 8, '9': 21, '10': 'databaseUpgrade', '17': true},
    {'1': 'rgb', '3': 27, '4': 1, '5': 12, '9': 22, '10': 'rgb', '17': true},
    {'1': 'alias', '3': 28, '4': 1, '5': 9, '9': 23, '10': 'alias', '17': true},
    {'1': 'pid_file', '3': 29, '4': 1, '5': 9, '9': 24, '10': 'pidFile', '17': true},
    {'1': 'ignore_fee_limits', '3': 30, '4': 1, '5': 8, '9': 25, '10': 'ignoreFeeLimits', '17': true},
    {'1': 'watchtime_blocks', '3': 31, '4': 1, '5': 13, '9': 26, '10': 'watchtimeBlocks', '17': true},
    {'1': 'max_locktime_blocks', '3': 32, '4': 1, '5': 13, '9': 27, '10': 'maxLocktimeBlocks', '17': true},
    {'1': 'funding_confirms', '3': 33, '4': 1, '5': 13, '9': 28, '10': 'fundingConfirms', '17': true},
    {'1': 'cltv_delta', '3': 34, '4': 1, '5': 13, '9': 29, '10': 'cltvDelta', '17': true},
    {'1': 'cltv_final', '3': 35, '4': 1, '5': 13, '9': 30, '10': 'cltvFinal', '17': true},
    {'1': 'commit_time', '3': 36, '4': 1, '5': 13, '9': 31, '10': 'commitTime', '17': true},
    {'1': 'fee_base', '3': 37, '4': 1, '5': 13, '9': 32, '10': 'feeBase', '17': true},
    {'1': 'rescan', '3': 38, '4': 1, '5': 18, '9': 33, '10': 'rescan', '17': true},
    {'1': 'fee_per_satoshi', '3': 39, '4': 1, '5': 13, '9': 34, '10': 'feePerSatoshi', '17': true},
    {'1': 'max_concurrent_htlcs', '3': 40, '4': 1, '5': 13, '9': 35, '10': 'maxConcurrentHtlcs', '17': true},
    {'1': 'htlc_minimum_msat', '3': 41, '4': 1, '5': 11, '6': '.cln.Amount', '9': 36, '10': 'htlcMinimumMsat', '17': true},
    {'1': 'htlc_maximum_msat', '3': 42, '4': 1, '5': 11, '6': '.cln.Amount', '9': 37, '10': 'htlcMaximumMsat', '17': true},
    {'1': 'max_dust_htlc_exposure_msat', '3': 43, '4': 1, '5': 11, '6': '.cln.Amount', '9': 38, '10': 'maxDustHtlcExposureMsat', '17': true},
    {'1': 'min_capacity_sat', '3': 44, '4': 1, '5': 4, '9': 39, '10': 'minCapacitySat', '17': true},
    {'1': 'addr', '3': 45, '4': 1, '5': 9, '9': 40, '10': 'addr', '17': true},
    {'1': 'announce_addr', '3': 46, '4': 1, '5': 9, '9': 41, '10': 'announceAddr', '17': true},
    {'1': 'bind_addr', '3': 47, '4': 1, '5': 9, '9': 42, '10': 'bindAddr', '17': true},
    {'1': 'offline', '3': 48, '4': 1, '5': 8, '9': 43, '10': 'offline', '17': true},
    {'1': 'autolisten', '3': 49, '4': 1, '5': 8, '9': 44, '10': 'autolisten', '17': true},
    {'1': 'proxy', '3': 50, '4': 1, '5': 9, '9': 45, '10': 'proxy', '17': true},
    {'1': 'disable_dns', '3': 51, '4': 1, '5': 8, '9': 46, '10': 'disableDns', '17': true},
    {'1': 'announce_addr_discovered', '3': 52, '4': 1, '5': 9, '9': 47, '10': 'announceAddrDiscovered', '17': true},
    {'1': 'announce_addr_discovered_port', '3': 53, '4': 1, '5': 18, '9': 48, '10': 'announceAddrDiscoveredPort', '17': true},
    {'1': 'encrypted_hsm', '3': 54, '4': 1, '5': 8, '9': 49, '10': 'encryptedHsm', '17': true},
    {'1': 'rpc_file_mode', '3': 55, '4': 1, '5': 9, '9': 50, '10': 'rpcFileMode', '17': true},
    {'1': 'log_level', '3': 56, '4': 1, '5': 9, '9': 51, '10': 'logLevel', '17': true},
    {'1': 'log_prefix', '3': 57, '4': 1, '5': 9, '9': 52, '10': 'logPrefix', '17': true},
    {'1': 'log_file', '3': 58, '4': 1, '5': 9, '9': 53, '10': 'logFile', '17': true},
    {'1': 'log_timestamps', '3': 59, '4': 1, '5': 8, '9': 54, '10': 'logTimestamps', '17': true},
    {'1': 'force_feerates', '3': 60, '4': 1, '5': 9, '9': 55, '10': 'forceFeerates', '17': true},
    {'1': 'subdaemon', '3': 61, '4': 1, '5': 9, '9': 56, '10': 'subdaemon', '17': true},
    {'1': 'fetchinvoice_noconnect', '3': 62, '4': 1, '5': 8, '9': 57, '10': 'fetchinvoiceNoconnect', '17': true},
    {'1': 'accept_htlc_tlv_types', '3': 63, '4': 1, '5': 9, '9': 58, '10': 'acceptHtlcTlvTypes', '17': true},
    {'1': 'tor_service_password', '3': 64, '4': 1, '5': 9, '9': 59, '10': 'torServicePassword', '17': true},
    {'1': 'dev_allowdustreserve', '3': 65, '4': 1, '5': 8, '9': 60, '10': 'devAllowdustreserve', '17': true},
    {'1': 'announce_addr_dns', '3': 66, '4': 1, '5': 8, '9': 61, '10': 'announceAddrDns', '17': true},
    {'1': 'require_confirmed_inputs', '3': 67, '4': 1, '5': 8, '9': 62, '10': 'requireConfirmedInputs', '17': true},
    {'1': 'developer', '3': 68, '4': 1, '5': 8, '9': 63, '10': 'developer', '17': true},
    {'1': 'commit_fee', '3': 69, '4': 1, '5': 4, '9': 64, '10': 'commitFee', '17': true},
    {'1': 'min_emergency_msat', '3': 70, '4': 1, '5': 11, '6': '.cln.Amount', '9': 65, '10': 'minEmergencyMsat', '17': true},
    {'1': 'commit_feerate_offset', '3': 71, '4': 1, '5': 13, '9': 66, '10': 'commitFeerateOffset', '17': true},
  ],
  '8': [
    {'1': '_configs'},
    {'1': '_conf'},
    {'1': '_lightning_dir'},
    {'1': '_network'},
    {'1': '_allow_deprecated_apis'},
    {'1': '_rpc_file'},
    {'1': '_bookkeeper_dir'},
    {'1': '_bookkeeper_db'},
    {'1': '_always_use_proxy'},
    {'1': '_daemon'},
    {'1': '_wallet'},
    {'1': '_large_channels'},
    {'1': '_experimental_dual_fund'},
    {'1': '_experimental_splicing'},
    {'1': '_experimental_onion_messages'},
    {'1': '_experimental_offers'},
    {'1': '_experimental_shutdown_wrong_funding'},
    {'1': '_experimental_peer_storage'},
    {'1': '_experimental_quiesce'},
    {'1': '_experimental_upgrade_protocol'},
    {'1': '_invoices_onchain_fallback'},
    {'1': '_database_upgrade'},
    {'1': '_rgb'},
    {'1': '_alias'},
    {'1': '_pid_file'},
    {'1': '_ignore_fee_limits'},
    {'1': '_watchtime_blocks'},
    {'1': '_max_locktime_blocks'},
    {'1': '_funding_confirms'},
    {'1': '_cltv_delta'},
    {'1': '_cltv_final'},
    {'1': '_commit_time'},
    {'1': '_fee_base'},
    {'1': '_rescan'},
    {'1': '_fee_per_satoshi'},
    {'1': '_max_concurrent_htlcs'},
    {'1': '_htlc_minimum_msat'},
    {'1': '_htlc_maximum_msat'},
    {'1': '_max_dust_htlc_exposure_msat'},
    {'1': '_min_capacity_sat'},
    {'1': '_addr'},
    {'1': '_announce_addr'},
    {'1': '_bind_addr'},
    {'1': '_offline'},
    {'1': '_autolisten'},
    {'1': '_proxy'},
    {'1': '_disable_dns'},
    {'1': '_announce_addr_discovered'},
    {'1': '_announce_addr_discovered_port'},
    {'1': '_encrypted_hsm'},
    {'1': '_rpc_file_mode'},
    {'1': '_log_level'},
    {'1': '_log_prefix'},
    {'1': '_log_file'},
    {'1': '_log_timestamps'},
    {'1': '_force_feerates'},
    {'1': '_subdaemon'},
    {'1': '_fetchinvoice_noconnect'},
    {'1': '_accept_htlc_tlv_types'},
    {'1': '_tor_service_password'},
    {'1': '_dev_allowdustreserve'},
    {'1': '_announce_addr_dns'},
    {'1': '_require_confirmed_inputs'},
    {'1': '_developer'},
    {'1': '_commit_fee'},
    {'1': '_min_emergency_msat'},
    {'1': '_commit_feerate_offset'},
  ],
};

/// Descriptor for `ListconfigsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0Y29uZmlnc1Jlc3BvbnNlEjYKB2NvbmZpZ3MYASABKAsyFy5jbG4uTGlzdGNvbmZpZ3'
    'NDb25maWdzSABSB2NvbmZpZ3OIAQESMQoHcGx1Z2lucxgDIAMoCzIXLmNsbi5MaXN0Y29uZmln'
    'c1BsdWdpbnNSB3BsdWdpbnMSTQoRaW1wb3J0YW50X3BsdWdpbnMYBCADKAsyIC5jbG4uTGlzdG'
    'NvbmZpZ3NJbXBvcnRhbnRwbHVnaW5zUhBpbXBvcnRhbnRQbHVnaW5zEhcKBGNvbmYYBSABKAlI'
    'AVIEY29uZogBARIoCg1saWdodG5pbmdfZGlyGAYgASgJSAJSDGxpZ2h0bmluZ0RpcogBARIdCg'
    'duZXR3b3JrGAcgASgJSANSB25ldHdvcmuIAQESNwoVYWxsb3dfZGVwcmVjYXRlZF9hcGlzGAgg'
    'ASgISARSE2FsbG93RGVwcmVjYXRlZEFwaXOIAQESHgoIcnBjX2ZpbGUYCSABKAlIBVIHcnBjRm'
    'lsZYgBARIlCg5kaXNhYmxlX3BsdWdpbhgKIAMoCVINZGlzYWJsZVBsdWdpbhIqCg5ib29ra2Vl'
    'cGVyX2RpchgLIAEoCUgGUg1ib29ra2VlcGVyRGlyiAEBEigKDWJvb2trZWVwZXJfZGIYDCABKA'
    'lIB1IMYm9va2tlZXBlckRiiAEBEi0KEGFsd2F5c191c2VfcHJveHkYDSABKAhICFIOYWx3YXlz'
    'VXNlUHJveHmIAQESGwoGZGFlbW9uGA4gASgISAlSBmRhZW1vbogBARIbCgZ3YWxsZXQYDyABKA'
    'lIClIGd2FsbGV0iAEBEioKDmxhcmdlX2NoYW5uZWxzGBAgASgISAtSDWxhcmdlQ2hhbm5lbHOI'
    'AQESOQoWZXhwZXJpbWVudGFsX2R1YWxfZnVuZBgRIAEoCEgMUhRleHBlcmltZW50YWxEdWFsRn'
    'VuZIgBARI4ChVleHBlcmltZW50YWxfc3BsaWNpbmcYEiABKAhIDVIUZXhwZXJpbWVudGFsU3Bs'
    'aWNpbmeIAQESQwobZXhwZXJpbWVudGFsX29uaW9uX21lc3NhZ2VzGBMgASgISA5SGWV4cGVyaW'
    '1lbnRhbE9uaW9uTWVzc2FnZXOIAQESNAoTZXhwZXJpbWVudGFsX29mZmVycxgUIAEoCEgPUhJl'
    'eHBlcmltZW50YWxPZmZlcnOIAQESUgojZXhwZXJpbWVudGFsX3NodXRkb3duX3dyb25nX2Z1bm'
    'RpbmcYFSABKAhIEFIgZXhwZXJpbWVudGFsU2h1dGRvd25Xcm9uZ0Z1bmRpbmeIAQESPwoZZXhw'
    'ZXJpbWVudGFsX3BlZXJfc3RvcmFnZRgWIAEoCEgRUhdleHBlcmltZW50YWxQZWVyU3RvcmFnZY'
    'gBARI2ChRleHBlcmltZW50YWxfcXVpZXNjZRgXIAEoCEgSUhNleHBlcmltZW50YWxRdWllc2Nl'
    'iAEBEkcKHWV4cGVyaW1lbnRhbF91cGdyYWRlX3Byb3RvY29sGBggASgISBNSG2V4cGVyaW1lbn'
    'RhbFVwZ3JhZGVQcm90b2NvbIgBARI/ChlpbnZvaWNlc19vbmNoYWluX2ZhbGxiYWNrGBkgASgI'
    'SBRSF2ludm9pY2VzT25jaGFpbkZhbGxiYWNriAEBEi4KEGRhdGFiYXNlX3VwZ3JhZGUYGiABKA'
    'hIFVIPZGF0YWJhc2VVcGdyYWRliAEBEhUKA3JnYhgbIAEoDEgWUgNyZ2KIAQESGQoFYWxpYXMY'
    'HCABKAlIF1IFYWxpYXOIAQESHgoIcGlkX2ZpbGUYHSABKAlIGFIHcGlkRmlsZYgBARIvChFpZ2'
    '5vcmVfZmVlX2xpbWl0cxgeIAEoCEgZUg9pZ25vcmVGZWVMaW1pdHOIAQESLgoQd2F0Y2h0aW1l'
    'X2Jsb2NrcxgfIAEoDUgaUg93YXRjaHRpbWVCbG9ja3OIAQESMwoTbWF4X2xvY2t0aW1lX2Jsb2'
    'NrcxggIAEoDUgbUhFtYXhMb2NrdGltZUJsb2Nrc4gBARIuChBmdW5kaW5nX2NvbmZpcm1zGCEg'
    'ASgNSBxSD2Z1bmRpbmdDb25maXJtc4gBARIiCgpjbHR2X2RlbHRhGCIgASgNSB1SCWNsdHZEZW'
    'x0YYgBARIiCgpjbHR2X2ZpbmFsGCMgASgNSB5SCWNsdHZGaW5hbIgBARIkCgtjb21taXRfdGlt'
    'ZRgkIAEoDUgfUgpjb21taXRUaW1liAEBEh4KCGZlZV9iYXNlGCUgASgNSCBSB2ZlZUJhc2WIAQ'
    'ESGwoGcmVzY2FuGCYgASgSSCFSBnJlc2NhbogBARIrCg9mZWVfcGVyX3NhdG9zaGkYJyABKA1I'
    'IlINZmVlUGVyU2F0b3NoaYgBARI1ChRtYXhfY29uY3VycmVudF9odGxjcxgoIAEoDUgjUhJtYX'
    'hDb25jdXJyZW50SHRsY3OIAQESPAoRaHRsY19taW5pbXVtX21zYXQYKSABKAsyCy5jbG4uQW1v'
    'dW50SCRSD2h0bGNNaW5pbXVtTXNhdIgBARI8ChFodGxjX21heGltdW1fbXNhdBgqIAEoCzILLm'
    'Nsbi5BbW91bnRIJVIPaHRsY01heGltdW1Nc2F0iAEBEk4KG21heF9kdXN0X2h0bGNfZXhwb3N1'
    'cmVfbXNhdBgrIAEoCzILLmNsbi5BbW91bnRIJlIXbWF4RHVzdEh0bGNFeHBvc3VyZU1zYXSIAQ'
    'ESLQoQbWluX2NhcGFjaXR5X3NhdBgsIAEoBEgnUg5taW5DYXBhY2l0eVNhdIgBARIXCgRhZGRy'
    'GC0gASgJSChSBGFkZHKIAQESKAoNYW5ub3VuY2VfYWRkchguIAEoCUgpUgxhbm5vdW5jZUFkZH'
    'KIAQESIAoJYmluZF9hZGRyGC8gASgJSCpSCGJpbmRBZGRyiAEBEh0KB29mZmxpbmUYMCABKAhI'
    'K1IHb2ZmbGluZYgBARIjCgphdXRvbGlzdGVuGDEgASgISCxSCmF1dG9saXN0ZW6IAQESGQoFcH'
    'JveHkYMiABKAlILVIFcHJveHmIAQESJAoLZGlzYWJsZV9kbnMYMyABKAhILlIKZGlzYWJsZURu'
    'c4gBARI9Chhhbm5vdW5jZV9hZGRyX2Rpc2NvdmVyZWQYNCABKAlIL1IWYW5ub3VuY2VBZGRyRG'
    'lzY292ZXJlZIgBARJGCh1hbm5vdW5jZV9hZGRyX2Rpc2NvdmVyZWRfcG9ydBg1IAEoEkgwUhph'
    'bm5vdW5jZUFkZHJEaXNjb3ZlcmVkUG9ydIgBARIoCg1lbmNyeXB0ZWRfaHNtGDYgASgISDFSDG'
    'VuY3J5cHRlZEhzbYgBARInCg1ycGNfZmlsZV9tb2RlGDcgASgJSDJSC3JwY0ZpbGVNb2RliAEB'
    'EiAKCWxvZ19sZXZlbBg4IAEoCUgzUghsb2dMZXZlbIgBARIiCgpsb2dfcHJlZml4GDkgASgJSD'
    'RSCWxvZ1ByZWZpeIgBARIeCghsb2dfZmlsZRg6IAEoCUg1Ugdsb2dGaWxliAEBEioKDmxvZ190'
    'aW1lc3RhbXBzGDsgASgISDZSDWxvZ1RpbWVzdGFtcHOIAQESKgoOZm9yY2VfZmVlcmF0ZXMYPC'
    'ABKAlIN1INZm9yY2VGZWVyYXRlc4gBARIhCglzdWJkYWVtb24YPSABKAlIOFIJc3ViZGFlbW9u'
    'iAEBEjoKFmZldGNoaW52b2ljZV9ub2Nvbm5lY3QYPiABKAhIOVIVZmV0Y2hpbnZvaWNlTm9jb2'
    '5uZWN0iAEBEjYKFWFjY2VwdF9odGxjX3Rsdl90eXBlcxg/IAEoCUg6UhJhY2NlcHRIdGxjVGx2'
    'VHlwZXOIAQESNQoUdG9yX3NlcnZpY2VfcGFzc3dvcmQYQCABKAlIO1ISdG9yU2VydmljZVBhc3'
    'N3b3JkiAEBEjYKFGRldl9hbGxvd2R1c3RyZXNlcnZlGEEgASgISDxSE2RldkFsbG93ZHVzdHJl'
    'c2VydmWIAQESLwoRYW5ub3VuY2VfYWRkcl9kbnMYQiABKAhIPVIPYW5ub3VuY2VBZGRyRG5ziA'
    'EBEj0KGHJlcXVpcmVfY29uZmlybWVkX2lucHV0cxhDIAEoCEg+UhZyZXF1aXJlQ29uZmlybWVk'
    'SW5wdXRziAEBEiEKCWRldmVsb3BlchhEIAEoCEg/UglkZXZlbG9wZXKIAQESIgoKY29tbWl0X2'
    'ZlZRhFIAEoBEhAUgljb21taXRGZWWIAQESPgoSbWluX2VtZXJnZW5jeV9tc2F0GEYgASgLMgsu'
    'Y2xuLkFtb3VudEhBUhBtaW5FbWVyZ2VuY3lNc2F0iAEBEjcKFWNvbW1pdF9mZWVyYXRlX29mZn'
    'NldBhHIAEoDUhCUhNjb21taXRGZWVyYXRlT2Zmc2V0iAEBQgoKCF9jb25maWdzQgcKBV9jb25m'
    'QhAKDl9saWdodG5pbmdfZGlyQgoKCF9uZXR3b3JrQhgKFl9hbGxvd19kZXByZWNhdGVkX2FwaX'
    'NCCwoJX3JwY19maWxlQhEKD19ib29ra2VlcGVyX2RpckIQCg5fYm9va2tlZXBlcl9kYkITChFf'
    'YWx3YXlzX3VzZV9wcm94eUIJCgdfZGFlbW9uQgkKB193YWxsZXRCEQoPX2xhcmdlX2NoYW5uZW'
    'xzQhkKF19leHBlcmltZW50YWxfZHVhbF9mdW5kQhgKFl9leHBlcmltZW50YWxfc3BsaWNpbmdC'
    'HgocX2V4cGVyaW1lbnRhbF9vbmlvbl9tZXNzYWdlc0IWChRfZXhwZXJpbWVudGFsX29mZmVyc0'
    'ImCiRfZXhwZXJpbWVudGFsX3NodXRkb3duX3dyb25nX2Z1bmRpbmdCHAoaX2V4cGVyaW1lbnRh'
    'bF9wZWVyX3N0b3JhZ2VCFwoVX2V4cGVyaW1lbnRhbF9xdWllc2NlQiAKHl9leHBlcmltZW50YW'
    'xfdXBncmFkZV9wcm90b2NvbEIcChpfaW52b2ljZXNfb25jaGFpbl9mYWxsYmFja0ITChFfZGF0'
    'YWJhc2VfdXBncmFkZUIGCgRfcmdiQggKBl9hbGlhc0ILCglfcGlkX2ZpbGVCFAoSX2lnbm9yZV'
    '9mZWVfbGltaXRzQhMKEV93YXRjaHRpbWVfYmxvY2tzQhYKFF9tYXhfbG9ja3RpbWVfYmxvY2tz'
    'QhMKEV9mdW5kaW5nX2NvbmZpcm1zQg0KC19jbHR2X2RlbHRhQg0KC19jbHR2X2ZpbmFsQg4KDF'
    '9jb21taXRfdGltZUILCglfZmVlX2Jhc2VCCQoHX3Jlc2NhbkISChBfZmVlX3Blcl9zYXRvc2hp'
    'QhcKFV9tYXhfY29uY3VycmVudF9odGxjc0IUChJfaHRsY19taW5pbXVtX21zYXRCFAoSX2h0bG'
    'NfbWF4aW11bV9tc2F0Qh4KHF9tYXhfZHVzdF9odGxjX2V4cG9zdXJlX21zYXRCEwoRX21pbl9j'
    'YXBhY2l0eV9zYXRCBwoFX2FkZHJCEAoOX2Fubm91bmNlX2FkZHJCDAoKX2JpbmRfYWRkckIKCg'
    'hfb2ZmbGluZUINCgtfYXV0b2xpc3RlbkIICgZfcHJveHlCDgoMX2Rpc2FibGVfZG5zQhsKGV9h'
    'bm5vdW5jZV9hZGRyX2Rpc2NvdmVyZWRCIAoeX2Fubm91bmNlX2FkZHJfZGlzY292ZXJlZF9wb3'
    'J0QhAKDl9lbmNyeXB0ZWRfaHNtQhAKDl9ycGNfZmlsZV9tb2RlQgwKCl9sb2dfbGV2ZWxCDQoL'
    'X2xvZ19wcmVmaXhCCwoJX2xvZ19maWxlQhEKD19sb2dfdGltZXN0YW1wc0IRCg9fZm9yY2VfZm'
    'VlcmF0ZXNCDAoKX3N1YmRhZW1vbkIZChdfZmV0Y2hpbnZvaWNlX25vY29ubmVjdEIYChZfYWNj'
    'ZXB0X2h0bGNfdGx2X3R5cGVzQhcKFV90b3Jfc2VydmljZV9wYXNzd29yZEIXChVfZGV2X2FsbG'
    '93ZHVzdHJlc2VydmVCFAoSX2Fubm91bmNlX2FkZHJfZG5zQhsKGV9yZXF1aXJlX2NvbmZpcm1l'
    'ZF9pbnB1dHNCDAoKX2RldmVsb3BlckINCgtfY29tbWl0X2ZlZUIVChNfbWluX2VtZXJnZW5jeV'
    '9tc2F0QhgKFl9jb21taXRfZmVlcmF0ZV9vZmZzZXQ=');

@$core.Deprecated('Use listconfigsConfigsDescriptor instead')
const ListconfigsConfigs$json = {
  '1': 'ListconfigsConfigs',
  '2': [
    {'1': 'conf', '3': 1, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsConf', '9': 0, '10': 'conf', '17': true},
    {'1': 'developer', '3': 2, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsDeveloper', '9': 1, '10': 'developer', '17': true},
    {'1': 'clear_plugins', '3': 3, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsClearplugins', '9': 2, '10': 'clearPlugins', '17': true},
    {'1': 'disable_mpp', '3': 4, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsDisablempp', '9': 3, '10': 'disableMpp', '17': true},
    {'1': 'mainnet', '3': 5, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsMainnet', '9': 4, '10': 'mainnet', '17': true},
    {'1': 'regtest', '3': 6, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsRegtest', '9': 5, '10': 'regtest', '17': true},
    {'1': 'signet', '3': 7, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsSignet', '9': 6, '10': 'signet', '17': true},
    {'1': 'testnet', '3': 8, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsTestnet', '9': 7, '10': 'testnet', '17': true},
    {'1': 'important_plugin', '3': 9, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsImportantplugin', '9': 8, '10': 'importantPlugin', '17': true},
    {'1': 'plugin', '3': 10, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsPlugin', '9': 9, '10': 'plugin', '17': true},
    {'1': 'plugin_dir', '3': 11, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsPlugindir', '9': 10, '10': 'pluginDir', '17': true},
    {'1': 'lightning_dir', '3': 12, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsLightningdir', '9': 11, '10': 'lightningDir', '17': true},
    {'1': 'network', '3': 13, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsNetwork', '9': 12, '10': 'network', '17': true},
    {'1': 'allow_deprecated_apis', '3': 14, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAllowdeprecatedapis', '9': 13, '10': 'allowDeprecatedApis', '17': true},
    {'1': 'rpc_file', '3': 15, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsRpcfile', '9': 14, '10': 'rpcFile', '17': true},
    {'1': 'disable_plugin', '3': 16, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsDisableplugin', '9': 15, '10': 'disablePlugin', '17': true},
    {'1': 'always_use_proxy', '3': 17, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAlwaysuseproxy', '9': 16, '10': 'alwaysUseProxy', '17': true},
    {'1': 'daemon', '3': 18, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsDaemon', '9': 17, '10': 'daemon', '17': true},
    {'1': 'wallet', '3': 19, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsWallet', '9': 18, '10': 'wallet', '17': true},
    {'1': 'large_channels', '3': 20, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsLargechannels', '9': 19, '10': 'largeChannels', '17': true},
    {'1': 'experimental_dual_fund', '3': 21, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsExperimentaldualfund', '9': 20, '10': 'experimentalDualFund', '17': true},
    {'1': 'experimental_splicing', '3': 22, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsExperimentalsplicing', '9': 21, '10': 'experimentalSplicing', '17': true},
    {'1': 'experimental_onion_messages', '3': 23, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsExperimentalonionmessages', '9': 22, '10': 'experimentalOnionMessages', '17': true},
    {'1': 'experimental_offers', '3': 24, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsExperimentaloffers', '9': 23, '10': 'experimentalOffers', '17': true},
    {'1': 'experimental_shutdown_wrong_funding', '3': 25, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsExperimentalshutdownwrongfunding', '9': 24, '10': 'experimentalShutdownWrongFunding', '17': true},
    {'1': 'experimental_peer_storage', '3': 26, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsExperimentalpeerstorage', '9': 25, '10': 'experimentalPeerStorage', '17': true},
    {'1': 'experimental_anchors', '3': 27, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsExperimentalanchors', '9': 26, '10': 'experimentalAnchors', '17': true},
    {'1': 'database_upgrade', '3': 28, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsDatabaseupgrade', '9': 27, '10': 'databaseUpgrade', '17': true},
    {'1': 'rgb', '3': 29, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsRgb', '9': 28, '10': 'rgb', '17': true},
    {'1': 'alias', '3': 30, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAlias', '9': 29, '10': 'alias', '17': true},
    {'1': 'pid_file', '3': 31, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsPidfile', '9': 30, '10': 'pidFile', '17': true},
    {'1': 'ignore_fee_limits', '3': 32, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsIgnorefeelimits', '9': 31, '10': 'ignoreFeeLimits', '17': true},
    {'1': 'watchtime_blocks', '3': 33, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsWatchtimeblocks', '9': 32, '10': 'watchtimeBlocks', '17': true},
    {'1': 'max_locktime_blocks', '3': 34, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsMaxlocktimeblocks', '9': 33, '10': 'maxLocktimeBlocks', '17': true},
    {'1': 'funding_confirms', '3': 35, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsFundingconfirms', '9': 34, '10': 'fundingConfirms', '17': true},
    {'1': 'cltv_delta', '3': 36, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsCltvdelta', '9': 35, '10': 'cltvDelta', '17': true},
    {'1': 'cltv_final', '3': 37, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsCltvfinal', '9': 36, '10': 'cltvFinal', '17': true},
    {'1': 'commit_time', '3': 38, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsCommittime', '9': 37, '10': 'commitTime', '17': true},
    {'1': 'fee_base', '3': 39, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsFeebase', '9': 38, '10': 'feeBase', '17': true},
    {'1': 'rescan', '3': 40, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsRescan', '9': 39, '10': 'rescan', '17': true},
    {'1': 'fee_per_satoshi', '3': 41, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsFeepersatoshi', '9': 40, '10': 'feePerSatoshi', '17': true},
    {'1': 'max_concurrent_htlcs', '3': 42, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsMaxconcurrenthtlcs', '9': 41, '10': 'maxConcurrentHtlcs', '17': true},
    {'1': 'htlc_minimum_msat', '3': 43, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsHtlcminimummsat', '9': 42, '10': 'htlcMinimumMsat', '17': true},
    {'1': 'htlc_maximum_msat', '3': 44, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsHtlcmaximummsat', '9': 43, '10': 'htlcMaximumMsat', '17': true},
    {'1': 'max_dust_htlc_exposure_msat', '3': 45, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsMaxdusthtlcexposuremsat', '9': 44, '10': 'maxDustHtlcExposureMsat', '17': true},
    {'1': 'min_capacity_sat', '3': 46, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsMincapacitysat', '9': 45, '10': 'minCapacitySat', '17': true},
    {'1': 'addr', '3': 47, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAddr', '9': 46, '10': 'addr', '17': true},
    {'1': 'announce_addr', '3': 48, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAnnounceaddr', '9': 47, '10': 'announceAddr', '17': true},
    {'1': 'bind_addr', '3': 49, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsBindaddr', '9': 48, '10': 'bindAddr', '17': true},
    {'1': 'offline', '3': 50, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsOffline', '9': 49, '10': 'offline', '17': true},
    {'1': 'autolisten', '3': 51, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAutolisten', '9': 50, '10': 'autolisten', '17': true},
    {'1': 'proxy', '3': 52, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsProxy', '9': 51, '10': 'proxy', '17': true},
    {'1': 'disable_dns', '3': 53, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsDisabledns', '9': 52, '10': 'disableDns', '17': true},
    {'1': 'announce_addr_discovered', '3': 54, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAnnounceaddrdiscovered', '9': 53, '10': 'announceAddrDiscovered', '17': true},
    {'1': 'announce_addr_discovered_port', '3': 55, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAnnounceaddrdiscoveredport', '9': 54, '10': 'announceAddrDiscoveredPort', '17': true},
    {'1': 'encrypted_hsm', '3': 56, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsEncryptedhsm', '9': 55, '10': 'encryptedHsm', '17': true},
    {'1': 'rpc_file_mode', '3': 57, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsRpcfilemode', '9': 56, '10': 'rpcFileMode', '17': true},
    {'1': 'log_level', '3': 58, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsLoglevel', '9': 57, '10': 'logLevel', '17': true},
    {'1': 'log_prefix', '3': 59, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsLogprefix', '9': 58, '10': 'logPrefix', '17': true},
    {'1': 'log_file', '3': 60, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsLogfile', '9': 59, '10': 'logFile', '17': true},
    {'1': 'log_timestamps', '3': 61, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsLogtimestamps', '9': 60, '10': 'logTimestamps', '17': true},
    {'1': 'force_feerates', '3': 62, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsForcefeerates', '9': 61, '10': 'forceFeerates', '17': true},
    {'1': 'subdaemon', '3': 63, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsSubdaemon', '9': 62, '10': 'subdaemon', '17': true},
    {'1': 'fetchinvoice_noconnect', '3': 64, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsFetchinvoicenoconnect', '9': 63, '10': 'fetchinvoiceNoconnect', '17': true},
    {'1': 'accept_htlc_tlv_types', '3': 65, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAccepthtlctlvtypes', '9': 64, '10': 'acceptHtlcTlvTypes', '17': true},
    {'1': 'tor_service_password', '3': 66, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsTorservicepassword', '9': 65, '10': 'torServicePassword', '17': true},
    {'1': 'announce_addr_dns', '3': 67, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsAnnounceaddrdns', '9': 66, '10': 'announceAddrDns', '17': true},
    {'1': 'require_confirmed_inputs', '3': 68, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsRequireconfirmedinputs', '9': 67, '10': 'requireConfirmedInputs', '17': true},
    {'1': 'commit_fee', '3': 69, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsCommitfee', '9': 68, '10': 'commitFee', '17': true},
    {'1': 'commit_feerate_offset', '3': 70, '4': 1, '5': 11, '6': '.cln.ListconfigsConfigsCommitfeerateoffset', '9': 69, '10': 'commitFeerateOffset', '17': true},
  ],
  '8': [
    {'1': '_conf'},
    {'1': '_developer'},
    {'1': '_clear_plugins'},
    {'1': '_disable_mpp'},
    {'1': '_mainnet'},
    {'1': '_regtest'},
    {'1': '_signet'},
    {'1': '_testnet'},
    {'1': '_important_plugin'},
    {'1': '_plugin'},
    {'1': '_plugin_dir'},
    {'1': '_lightning_dir'},
    {'1': '_network'},
    {'1': '_allow_deprecated_apis'},
    {'1': '_rpc_file'},
    {'1': '_disable_plugin'},
    {'1': '_always_use_proxy'},
    {'1': '_daemon'},
    {'1': '_wallet'},
    {'1': '_large_channels'},
    {'1': '_experimental_dual_fund'},
    {'1': '_experimental_splicing'},
    {'1': '_experimental_onion_messages'},
    {'1': '_experimental_offers'},
    {'1': '_experimental_shutdown_wrong_funding'},
    {'1': '_experimental_peer_storage'},
    {'1': '_experimental_anchors'},
    {'1': '_database_upgrade'},
    {'1': '_rgb'},
    {'1': '_alias'},
    {'1': '_pid_file'},
    {'1': '_ignore_fee_limits'},
    {'1': '_watchtime_blocks'},
    {'1': '_max_locktime_blocks'},
    {'1': '_funding_confirms'},
    {'1': '_cltv_delta'},
    {'1': '_cltv_final'},
    {'1': '_commit_time'},
    {'1': '_fee_base'},
    {'1': '_rescan'},
    {'1': '_fee_per_satoshi'},
    {'1': '_max_concurrent_htlcs'},
    {'1': '_htlc_minimum_msat'},
    {'1': '_htlc_maximum_msat'},
    {'1': '_max_dust_htlc_exposure_msat'},
    {'1': '_min_capacity_sat'},
    {'1': '_addr'},
    {'1': '_announce_addr'},
    {'1': '_bind_addr'},
    {'1': '_offline'},
    {'1': '_autolisten'},
    {'1': '_proxy'},
    {'1': '_disable_dns'},
    {'1': '_announce_addr_discovered'},
    {'1': '_announce_addr_discovered_port'},
    {'1': '_encrypted_hsm'},
    {'1': '_rpc_file_mode'},
    {'1': '_log_level'},
    {'1': '_log_prefix'},
    {'1': '_log_file'},
    {'1': '_log_timestamps'},
    {'1': '_force_feerates'},
    {'1': '_subdaemon'},
    {'1': '_fetchinvoice_noconnect'},
    {'1': '_accept_htlc_tlv_types'},
    {'1': '_tor_service_password'},
    {'1': '_announce_addr_dns'},
    {'1': '_require_confirmed_inputs'},
    {'1': '_commit_fee'},
    {'1': '_commit_feerate_offset'},
  ],
};

/// Descriptor for `ListconfigsConfigs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsDescriptor = $convert.base64Decode(
    'ChJMaXN0Y29uZmlnc0NvbmZpZ3MSNAoEY29uZhgBIAEoCzIbLmNsbi5MaXN0Y29uZmlnc0Nvbm'
    'ZpZ3NDb25mSABSBGNvbmaIAQESQwoJZGV2ZWxvcGVyGAIgASgLMiAuY2xuLkxpc3Rjb25maWdz'
    'Q29uZmlnc0RldmVsb3BlckgBUglkZXZlbG9wZXKIAQESTQoNY2xlYXJfcGx1Z2lucxgDIAEoCz'
    'IjLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NDbGVhcnBsdWdpbnNIAlIMY2xlYXJQbHVnaW5ziAEB'
    'EkcKC2Rpc2FibGVfbXBwGAQgASgLMiEuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0Rpc2FibGVtcH'
    'BIA1IKZGlzYWJsZU1wcIgBARI9CgdtYWlubmV0GAUgASgLMh4uY2xuLkxpc3Rjb25maWdzQ29u'
    'Zmlnc01haW5uZXRIBFIHbWFpbm5ldIgBARI9CgdyZWd0ZXN0GAYgASgLMh4uY2xuLkxpc3Rjb2'
    '5maWdzQ29uZmlnc1JlZ3Rlc3RIBVIHcmVndGVzdIgBARI6CgZzaWduZXQYByABKAsyHS5jbG4u'
    'TGlzdGNvbmZpZ3NDb25maWdzU2lnbmV0SAZSBnNpZ25ldIgBARI9Cgd0ZXN0bmV0GAggASgLMh'
    '4uY2xuLkxpc3Rjb25maWdzQ29uZmlnc1Rlc3RuZXRIB1IHdGVzdG5ldIgBARJWChBpbXBvcnRh'
    'bnRfcGx1Z2luGAkgASgLMiYuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0ltcG9ydGFudHBsdWdpbk'
    'gIUg9pbXBvcnRhbnRQbHVnaW6IAQESOgoGcGx1Z2luGAogASgLMh0uY2xuLkxpc3Rjb25maWdz'
    'Q29uZmlnc1BsdWdpbkgJUgZwbHVnaW6IAQESRAoKcGx1Z2luX2RpchgLIAEoCzIgLmNsbi5MaX'
    'N0Y29uZmlnc0NvbmZpZ3NQbHVnaW5kaXJIClIJcGx1Z2luRGlyiAEBEk0KDWxpZ2h0bmluZ19k'
    'aXIYDCABKAsyIy5jbG4uTGlzdGNvbmZpZ3NDb25maWdzTGlnaHRuaW5nZGlySAtSDGxpZ2h0bm'
    'luZ0RpcogBARI9CgduZXR3b3JrGA0gASgLMh4uY2xuLkxpc3Rjb25maWdzQ29uZmlnc05ldHdv'
    'cmtIDFIHbmV0d29ya4gBARJjChVhbGxvd19kZXByZWNhdGVkX2FwaXMYDiABKAsyKi5jbG4uTG'
    'lzdGNvbmZpZ3NDb25maWdzQWxsb3dkZXByZWNhdGVkYXBpc0gNUhNhbGxvd0RlcHJlY2F0ZWRB'
    'cGlziAEBEj4KCHJwY19maWxlGA8gASgLMh4uY2xuLkxpc3Rjb25maWdzQ29uZmlnc1JwY2ZpbG'
    'VIDlIHcnBjRmlsZYgBARJQCg5kaXNhYmxlX3BsdWdpbhgQIAEoCzIkLmNsbi5MaXN0Y29uZmln'
    'c0NvbmZpZ3NEaXNhYmxlcGx1Z2luSA9SDWRpc2FibGVQbHVnaW6IAQESVAoQYWx3YXlzX3VzZV'
    '9wcm94eRgRIAEoCzIlLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NBbHdheXN1c2Vwcm94eUgQUg5h'
    'bHdheXNVc2VQcm94eYgBARI6CgZkYWVtb24YEiABKAsyHS5jbG4uTGlzdGNvbmZpZ3NDb25maW'
    'dzRGFlbW9uSBFSBmRhZW1vbogBARI6CgZ3YWxsZXQYEyABKAsyHS5jbG4uTGlzdGNvbmZpZ3ND'
    'b25maWdzV2FsbGV0SBJSBndhbGxldIgBARJQCg5sYXJnZV9jaGFubmVscxgUIAEoCzIkLmNsbi'
    '5MaXN0Y29uZmlnc0NvbmZpZ3NMYXJnZWNoYW5uZWxzSBNSDWxhcmdlQ2hhbm5lbHOIAQESZgoW'
    'ZXhwZXJpbWVudGFsX2R1YWxfZnVuZBgVIAEoCzIrLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NFeH'
    'BlcmltZW50YWxkdWFsZnVuZEgUUhRleHBlcmltZW50YWxEdWFsRnVuZIgBARJlChVleHBlcmlt'
    'ZW50YWxfc3BsaWNpbmcYFiABKAsyKy5jbG4uTGlzdGNvbmZpZ3NDb25maWdzRXhwZXJpbWVudG'
    'Fsc3BsaWNpbmdIFVIUZXhwZXJpbWVudGFsU3BsaWNpbmeIAQESdQobZXhwZXJpbWVudGFsX29u'
    'aW9uX21lc3NhZ2VzGBcgASgLMjAuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0V4cGVyaW1lbnRhbG'
    '9uaW9ubWVzc2FnZXNIFlIZZXhwZXJpbWVudGFsT25pb25NZXNzYWdlc4gBARJfChNleHBlcmlt'
    'ZW50YWxfb2ZmZXJzGBggASgLMikuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0V4cGVyaW1lbnRhbG'
    '9mZmVyc0gXUhJleHBlcmltZW50YWxPZmZlcnOIAQESiwEKI2V4cGVyaW1lbnRhbF9zaHV0ZG93'
    'bl93cm9uZ19mdW5kaW5nGBkgASgLMjcuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0V4cGVyaW1lbn'
    'RhbHNodXRkb3dud3JvbmdmdW5kaW5nSBhSIGV4cGVyaW1lbnRhbFNodXRkb3duV3JvbmdGdW5k'
    'aW5niAEBEm8KGWV4cGVyaW1lbnRhbF9wZWVyX3N0b3JhZ2UYGiABKAsyLi5jbG4uTGlzdGNvbm'
    'ZpZ3NDb25maWdzRXhwZXJpbWVudGFscGVlcnN0b3JhZ2VIGVIXZXhwZXJpbWVudGFsUGVlclN0'
    'b3JhZ2WIAQESYgoUZXhwZXJpbWVudGFsX2FuY2hvcnMYGyABKAsyKi5jbG4uTGlzdGNvbmZpZ3'
    'NDb25maWdzRXhwZXJpbWVudGFsYW5jaG9yc0gaUhNleHBlcmltZW50YWxBbmNob3JziAEBElYK'
    'EGRhdGFiYXNlX3VwZ3JhZGUYHCABKAsyJi5jbG4uTGlzdGNvbmZpZ3NDb25maWdzRGF0YWJhc2'
    'V1cGdyYWRlSBtSD2RhdGFiYXNlVXBncmFkZYgBARIxCgNyZ2IYHSABKAsyGi5jbG4uTGlzdGNv'
    'bmZpZ3NDb25maWdzUmdiSBxSA3JnYogBARI3CgVhbGlhcxgeIAEoCzIcLmNsbi5MaXN0Y29uZm'
    'lnc0NvbmZpZ3NBbGlhc0gdUgVhbGlhc4gBARI+CghwaWRfZmlsZRgfIAEoCzIeLmNsbi5MaXN0'
    'Y29uZmlnc0NvbmZpZ3NQaWRmaWxlSB5SB3BpZEZpbGWIAQESVwoRaWdub3JlX2ZlZV9saW1pdH'
    'MYICABKAsyJi5jbG4uTGlzdGNvbmZpZ3NDb25maWdzSWdub3JlZmVlbGltaXRzSB9SD2lnbm9y'
    'ZUZlZUxpbWl0c4gBARJWChB3YXRjaHRpbWVfYmxvY2tzGCEgASgLMiYuY2xuLkxpc3Rjb25maW'
    'dzQ29uZmlnc1dhdGNodGltZWJsb2Nrc0ggUg93YXRjaHRpbWVCbG9ja3OIAQESXQoTbWF4X2xv'
    'Y2t0aW1lX2Jsb2NrcxgiIAEoCzIoLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NNYXhsb2NrdGltZW'
    'Jsb2Nrc0ghUhFtYXhMb2NrdGltZUJsb2Nrc4gBARJWChBmdW5kaW5nX2NvbmZpcm1zGCMgASgL'
    'MiYuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0Z1bmRpbmdjb25maXJtc0giUg9mdW5kaW5nQ29uZm'
    'lybXOIAQESRAoKY2x0dl9kZWx0YRgkIAEoCzIgLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NDbHR2'
    'ZGVsdGFII1IJY2x0dkRlbHRhiAEBEkQKCmNsdHZfZmluYWwYJSABKAsyIC5jbG4uTGlzdGNvbm'
    'ZpZ3NDb25maWdzQ2x0dmZpbmFsSCRSCWNsdHZGaW5hbIgBARJHCgtjb21taXRfdGltZRgmIAEo'
    'CzIhLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NDb21taXR0aW1lSCVSCmNvbW1pdFRpbWWIAQESPg'
    'oIZmVlX2Jhc2UYJyABKAsyHi5jbG4uTGlzdGNvbmZpZ3NDb25maWdzRmVlYmFzZUgmUgdmZWVC'
    'YXNliAEBEjoKBnJlc2NhbhgoIAEoCzIdLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NSZXNjYW5IJ1'
    'IGcmVzY2FuiAEBElEKD2ZlZV9wZXJfc2F0b3NoaRgpIAEoCzIkLmNsbi5MaXN0Y29uZmlnc0Nv'
    'bmZpZ3NGZWVwZXJzYXRvc2hpSChSDWZlZVBlclNhdG9zaGmIAQESYAoUbWF4X2NvbmN1cnJlbn'
    'RfaHRsY3MYKiABKAsyKS5jbG4uTGlzdGNvbmZpZ3NDb25maWdzTWF4Y29uY3VycmVudGh0bGNz'
    'SClSEm1heENvbmN1cnJlbnRIdGxjc4gBARJXChFodGxjX21pbmltdW1fbXNhdBgrIAEoCzImLm'
    'Nsbi5MaXN0Y29uZmlnc0NvbmZpZ3NIdGxjbWluaW11bW1zYXRIKlIPaHRsY01pbmltdW1Nc2F0'
    'iAEBElcKEWh0bGNfbWF4aW11bV9tc2F0GCwgASgLMiYuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0'
    'h0bGNtYXhpbXVtbXNhdEgrUg9odGxjTWF4aW11bU1zYXSIAQEScQobbWF4X2R1c3RfaHRsY19l'
    'eHBvc3VyZV9tc2F0GC0gASgLMi4uY2xuLkxpc3Rjb25maWdzQ29uZmlnc01heGR1c3RodGxjZX'
    'hwb3N1cmVtc2F0SCxSF21heER1c3RIdGxjRXhwb3N1cmVNc2F0iAEBElQKEG1pbl9jYXBhY2l0'
    'eV9zYXQYLiABKAsyJS5jbG4uTGlzdGNvbmZpZ3NDb25maWdzTWluY2FwYWNpdHlzYXRILVIObW'
    'luQ2FwYWNpdHlTYXSIAQESNAoEYWRkchgvIAEoCzIbLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NB'
    'ZGRySC5SBGFkZHKIAQESTQoNYW5ub3VuY2VfYWRkchgwIAEoCzIjLmNsbi5MaXN0Y29uZmlnc0'
    'NvbmZpZ3NBbm5vdW5jZWFkZHJIL1IMYW5ub3VuY2VBZGRyiAEBEkEKCWJpbmRfYWRkchgxIAEo'
    'CzIfLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NCaW5kYWRkckgwUghiaW5kQWRkcogBARI9CgdvZm'
    'ZsaW5lGDIgASgLMh4uY2xuLkxpc3Rjb25maWdzQ29uZmlnc09mZmxpbmVIMVIHb2ZmbGluZYgB'
    'ARJGCgphdXRvbGlzdGVuGDMgASgLMiEuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0F1dG9saXN0ZW'
    '5IMlIKYXV0b2xpc3RlbogBARI3CgVwcm94eRg0IAEoCzIcLmNsbi5MaXN0Y29uZmlnc0NvbmZp'
    'Z3NQcm94eUgzUgVwcm94eYgBARJHCgtkaXNhYmxlX2Rucxg1IAEoCzIhLmNsbi5MaXN0Y29uZm'
    'lnc0NvbmZpZ3NEaXNhYmxlZG5zSDRSCmRpc2FibGVEbnOIAQESbAoYYW5ub3VuY2VfYWRkcl9k'
    'aXNjb3ZlcmVkGDYgASgLMi0uY2xuLkxpc3Rjb25maWdzQ29uZmlnc0Fubm91bmNlYWRkcmRpc2'
    'NvdmVyZWRINVIWYW5ub3VuY2VBZGRyRGlzY292ZXJlZIgBARJ5Ch1hbm5vdW5jZV9hZGRyX2Rp'
    'c2NvdmVyZWRfcG9ydBg3IAEoCzIxLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NBbm5vdW5jZWFkZH'
    'JkaXNjb3ZlcmVkcG9ydEg2Uhphbm5vdW5jZUFkZHJEaXNjb3ZlcmVkUG9ydIgBARJNCg1lbmNy'
    'eXB0ZWRfaHNtGDggASgLMiMuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0VuY3J5cHRlZGhzbUg3Ug'
    'xlbmNyeXB0ZWRIc22IAQESSwoNcnBjX2ZpbGVfbW9kZRg5IAEoCzIiLmNsbi5MaXN0Y29uZmln'
    'c0NvbmZpZ3NScGNmaWxlbW9kZUg4UgtycGNGaWxlTW9kZYgBARJBCglsb2dfbGV2ZWwYOiABKA'
    'syHy5jbG4uTGlzdGNvbmZpZ3NDb25maWdzTG9nbGV2ZWxIOVIIbG9nTGV2ZWyIAQESRAoKbG9n'
    'X3ByZWZpeBg7IAEoCzIgLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NMb2dwcmVmaXhIOlIJbG9nUH'
    'JlZml4iAEBEj4KCGxvZ19maWxlGDwgASgLMh4uY2xuLkxpc3Rjb25maWdzQ29uZmlnc0xvZ2Zp'
    'bGVIO1IHbG9nRmlsZYgBARJQCg5sb2dfdGltZXN0YW1wcxg9IAEoCzIkLmNsbi5MaXN0Y29uZm'
    'lnc0NvbmZpZ3NMb2d0aW1lc3RhbXBzSDxSDWxvZ1RpbWVzdGFtcHOIAQESUAoOZm9yY2VfZmVl'
    'cmF0ZXMYPiABKAsyJC5jbG4uTGlzdGNvbmZpZ3NDb25maWdzRm9yY2VmZWVyYXRlc0g9Ug1mb3'
    'JjZUZlZXJhdGVziAEBEkMKCXN1YmRhZW1vbhg/IAEoCzIgLmNsbi5MaXN0Y29uZmlnc0NvbmZp'
    'Z3NTdWJkYWVtb25IPlIJc3ViZGFlbW9uiAEBEmgKFmZldGNoaW52b2ljZV9ub2Nvbm5lY3QYQC'
    'ABKAsyLC5jbG4uTGlzdGNvbmZpZ3NDb25maWdzRmV0Y2hpbnZvaWNlbm9jb25uZWN0SD9SFWZl'
    'dGNoaW52b2ljZU5vY29ubmVjdIgBARJhChVhY2NlcHRfaHRsY190bHZfdHlwZXMYQSABKAsyKS'
    '5jbG4uTGlzdGNvbmZpZ3NDb25maWdzQWNjZXB0aHRsY3RsdnR5cGVzSEBSEmFjY2VwdEh0bGNU'
    'bHZUeXBlc4gBARJgChR0b3Jfc2VydmljZV9wYXNzd29yZBhCIAEoCzIpLmNsbi5MaXN0Y29uZm'
    'lnc0NvbmZpZ3NUb3JzZXJ2aWNlcGFzc3dvcmRIQVISdG9yU2VydmljZVBhc3N3b3JkiAEBElcK'
    'EWFubm91bmNlX2FkZHJfZG5zGEMgASgLMiYuY2xuLkxpc3Rjb25maWdzQ29uZmlnc0Fubm91bm'
    'NlYWRkcmRuc0hCUg9hbm5vdW5jZUFkZHJEbnOIAQESbAoYcmVxdWlyZV9jb25maXJtZWRfaW5w'
    'dXRzGEQgASgLMi0uY2xuLkxpc3Rjb25maWdzQ29uZmlnc1JlcXVpcmVjb25maXJtZWRpbnB1dH'
    'NIQ1IWcmVxdWlyZUNvbmZpcm1lZElucHV0c4gBARJECgpjb21taXRfZmVlGEUgASgLMiAuY2xu'
    'Lkxpc3Rjb25maWdzQ29uZmlnc0NvbW1pdGZlZUhEUgljb21taXRGZWWIAQESYwoVY29tbWl0X2'
    'ZlZXJhdGVfb2Zmc2V0GEYgASgLMiouY2xuLkxpc3Rjb25maWdzQ29uZmlnc0NvbW1pdGZlZXJh'
    'dGVvZmZzZXRIRVITY29tbWl0RmVlcmF0ZU9mZnNldIgBAUIHCgVfY29uZkIMCgpfZGV2ZWxvcG'
    'VyQhAKDl9jbGVhcl9wbHVnaW5zQg4KDF9kaXNhYmxlX21wcEIKCghfbWFpbm5ldEIKCghfcmVn'
    'dGVzdEIJCgdfc2lnbmV0QgoKCF90ZXN0bmV0QhMKEV9pbXBvcnRhbnRfcGx1Z2luQgkKB19wbH'
    'VnaW5CDQoLX3BsdWdpbl9kaXJCEAoOX2xpZ2h0bmluZ19kaXJCCgoIX25ldHdvcmtCGAoWX2Fs'
    'bG93X2RlcHJlY2F0ZWRfYXBpc0ILCglfcnBjX2ZpbGVCEQoPX2Rpc2FibGVfcGx1Z2luQhMKEV'
    '9hbHdheXNfdXNlX3Byb3h5QgkKB19kYWVtb25CCQoHX3dhbGxldEIRCg9fbGFyZ2VfY2hhbm5l'
    'bHNCGQoXX2V4cGVyaW1lbnRhbF9kdWFsX2Z1bmRCGAoWX2V4cGVyaW1lbnRhbF9zcGxpY2luZ0'
    'IeChxfZXhwZXJpbWVudGFsX29uaW9uX21lc3NhZ2VzQhYKFF9leHBlcmltZW50YWxfb2ZmZXJz'
    'QiYKJF9leHBlcmltZW50YWxfc2h1dGRvd25fd3JvbmdfZnVuZGluZ0IcChpfZXhwZXJpbWVudG'
    'FsX3BlZXJfc3RvcmFnZUIXChVfZXhwZXJpbWVudGFsX2FuY2hvcnNCEwoRX2RhdGFiYXNlX3Vw'
    'Z3JhZGVCBgoEX3JnYkIICgZfYWxpYXNCCwoJX3BpZF9maWxlQhQKEl9pZ25vcmVfZmVlX2xpbW'
    'l0c0ITChFfd2F0Y2h0aW1lX2Jsb2Nrc0IWChRfbWF4X2xvY2t0aW1lX2Jsb2Nrc0ITChFfZnVu'
    'ZGluZ19jb25maXJtc0INCgtfY2x0dl9kZWx0YUINCgtfY2x0dl9maW5hbEIOCgxfY29tbWl0X3'
    'RpbWVCCwoJX2ZlZV9iYXNlQgkKB19yZXNjYW5CEgoQX2ZlZV9wZXJfc2F0b3NoaUIXChVfbWF4'
    'X2NvbmN1cnJlbnRfaHRsY3NCFAoSX2h0bGNfbWluaW11bV9tc2F0QhQKEl9odGxjX21heGltdW'
    '1fbXNhdEIeChxfbWF4X2R1c3RfaHRsY19leHBvc3VyZV9tc2F0QhMKEV9taW5fY2FwYWNpdHlf'
    'c2F0QgcKBV9hZGRyQhAKDl9hbm5vdW5jZV9hZGRyQgwKCl9iaW5kX2FkZHJCCgoIX29mZmxpbm'
    'VCDQoLX2F1dG9saXN0ZW5CCAoGX3Byb3h5Qg4KDF9kaXNhYmxlX2Ruc0IbChlfYW5ub3VuY2Vf'
    'YWRkcl9kaXNjb3ZlcmVkQiAKHl9hbm5vdW5jZV9hZGRyX2Rpc2NvdmVyZWRfcG9ydEIQCg5fZW'
    '5jcnlwdGVkX2hzbUIQCg5fcnBjX2ZpbGVfbW9kZUIMCgpfbG9nX2xldmVsQg0KC19sb2dfcHJl'
    'Zml4QgsKCV9sb2dfZmlsZUIRCg9fbG9nX3RpbWVzdGFtcHNCEQoPX2ZvcmNlX2ZlZXJhdGVzQg'
    'wKCl9zdWJkYWVtb25CGQoXX2ZldGNoaW52b2ljZV9ub2Nvbm5lY3RCGAoWX2FjY2VwdF9odGxj'
    'X3Rsdl90eXBlc0IXChVfdG9yX3NlcnZpY2VfcGFzc3dvcmRCFAoSX2Fubm91bmNlX2FkZHJfZG'
    '5zQhsKGV9yZXF1aXJlX2NvbmZpcm1lZF9pbnB1dHNCDQoLX2NvbW1pdF9mZWVCGAoWX2NvbW1p'
    'dF9mZWVyYXRlX29mZnNldA==');

@$core.Deprecated('Use listconfigsConfigsConfDescriptor instead')
const ListconfigsConfigsConf$json = {
  '1': 'ListconfigsConfigsConf',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 14, '6': '.cln.ListconfigsConfigsConf.ListconfigsConfigsConfSource', '10': 'source'},
  ],
  '4': [ListconfigsConfigsConf_ListconfigsConfigsConfSource$json],
};

@$core.Deprecated('Use listconfigsConfigsConfDescriptor instead')
const ListconfigsConfigsConf_ListconfigsConfigsConfSource$json = {
  '1': 'ListconfigsConfigsConfSource',
  '2': [
    {'1': 'CMDLINE', '2': 0},
  ],
};

/// Descriptor for `ListconfigsConfigsConf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsConfDescriptor = $convert.base64Decode(
    'ChZMaXN0Y29uZmlnc0NvbmZpZ3NDb25mEhsKCXZhbHVlX3N0chgBIAEoCVIIdmFsdWVTdHISUA'
    'oGc291cmNlGAIgASgOMjguY2xuLkxpc3Rjb25maWdzQ29uZmlnc0NvbmYuTGlzdGNvbmZpZ3ND'
    'b25maWdzQ29uZlNvdXJjZVIGc291cmNlIisKHExpc3Rjb25maWdzQ29uZmlnc0NvbmZTb3VyY2'
    'USCwoHQ01ETElORRAA');

@$core.Deprecated('Use listconfigsConfigsDeveloperDescriptor instead')
const ListconfigsConfigsDeveloper$json = {
  '1': 'ListconfigsConfigsDeveloper',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsDeveloper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsDeveloperDescriptor = $convert.base64Decode(
    'ChtMaXN0Y29uZmlnc0NvbmZpZ3NEZXZlbG9wZXISEAoDc2V0GAEgASgIUgNzZXQSFgoGc291cm'
    'NlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsClearpluginsDescriptor instead')
const ListconfigsConfigsClearplugins$json = {
  '1': 'ListconfigsConfigsClearplugins',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsClearplugins`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsClearpluginsDescriptor = $convert.base64Decode(
    'Ch5MaXN0Y29uZmlnc0NvbmZpZ3NDbGVhcnBsdWdpbnMSEAoDc2V0GAEgASgIUgNzZXQSFgoGc2'
    '91cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsDisablemppDescriptor instead')
const ListconfigsConfigsDisablempp$json = {
  '1': 'ListconfigsConfigsDisablempp',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
    {'1': 'plugin', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'plugin', '17': true},
  ],
  '8': [
    {'1': '_plugin'},
  ],
};

/// Descriptor for `ListconfigsConfigsDisablempp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsDisablemppDescriptor = $convert.base64Decode(
    'ChxMaXN0Y29uZmlnc0NvbmZpZ3NEaXNhYmxlbXBwEhAKA3NldBgBIAEoCFIDc2V0EhYKBnNvdX'
    'JjZRgCIAEoCVIGc291cmNlEhsKBnBsdWdpbhgDIAEoCUgAUgZwbHVnaW6IAQFCCQoHX3BsdWdp'
    'bg==');

@$core.Deprecated('Use listconfigsConfigsMainnetDescriptor instead')
const ListconfigsConfigsMainnet$json = {
  '1': 'ListconfigsConfigsMainnet',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsMainnet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsMainnetDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NNYWlubmV0EhAKA3NldBgBIAEoCFIDc2V0EhYKBnNvdXJjZR'
    'gCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsRegtestDescriptor instead')
const ListconfigsConfigsRegtest$json = {
  '1': 'ListconfigsConfigsRegtest',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsRegtest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsRegtestDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NSZWd0ZXN0EhAKA3NldBgBIAEoCFIDc2V0EhYKBnNvdXJjZR'
    'gCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsSignetDescriptor instead')
const ListconfigsConfigsSignet$json = {
  '1': 'ListconfigsConfigsSignet',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsSignet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsSignetDescriptor = $convert.base64Decode(
    'ChhMaXN0Y29uZmlnc0NvbmZpZ3NTaWduZXQSEAoDc2V0GAEgASgIUgNzZXQSFgoGc291cmNlGA'
    'IgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsTestnetDescriptor instead')
const ListconfigsConfigsTestnet$json = {
  '1': 'ListconfigsConfigsTestnet',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsTestnet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsTestnetDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NUZXN0bmV0EhAKA3NldBgBIAEoCFIDc2V0EhYKBnNvdXJjZR'
    'gCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsImportantpluginDescriptor instead')
const ListconfigsConfigsImportantplugin$json = {
  '1': 'ListconfigsConfigsImportantplugin',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsImportantplugin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsImportantpluginDescriptor = $convert.base64Decode(
    'CiFMaXN0Y29uZmlnc0NvbmZpZ3NJbXBvcnRhbnRwbHVnaW4SHQoKdmFsdWVzX3N0chgBIAMoCV'
    'IJdmFsdWVzU3RyEhgKB3NvdXJjZXMYAiADKAlSB3NvdXJjZXM=');

@$core.Deprecated('Use listconfigsConfigsPluginDescriptor instead')
const ListconfigsConfigsPlugin$json = {
  '1': 'ListconfigsConfigsPlugin',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsPlugin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsPluginDescriptor = $convert.base64Decode(
    'ChhMaXN0Y29uZmlnc0NvbmZpZ3NQbHVnaW4SHQoKdmFsdWVzX3N0chgBIAMoCVIJdmFsdWVzU3'
    'RyEhgKB3NvdXJjZXMYAiADKAlSB3NvdXJjZXM=');

@$core.Deprecated('Use listconfigsConfigsPlugindirDescriptor instead')
const ListconfigsConfigsPlugindir$json = {
  '1': 'ListconfigsConfigsPlugindir',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsPlugindir`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsPlugindirDescriptor = $convert.base64Decode(
    'ChtMaXN0Y29uZmlnc0NvbmZpZ3NQbHVnaW5kaXISHQoKdmFsdWVzX3N0chgBIAMoCVIJdmFsdW'
    'VzU3RyEhgKB3NvdXJjZXMYAiADKAlSB3NvdXJjZXM=');

@$core.Deprecated('Use listconfigsConfigsLightningdirDescriptor instead')
const ListconfigsConfigsLightningdir$json = {
  '1': 'ListconfigsConfigsLightningdir',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsLightningdir`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsLightningdirDescriptor = $convert.base64Decode(
    'Ch5MaXN0Y29uZmlnc0NvbmZpZ3NMaWdodG5pbmdkaXISGwoJdmFsdWVfc3RyGAEgASgJUgh2YW'
    'x1ZVN0chIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsNetworkDescriptor instead')
const ListconfigsConfigsNetwork$json = {
  '1': 'ListconfigsConfigsNetwork',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsNetwork`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsNetworkDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NOZXR3b3JrEhsKCXZhbHVlX3N0chgBIAEoCVIIdmFsdWVTdH'
    'ISFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsAllowdeprecatedapisDescriptor instead')
const ListconfigsConfigsAllowdeprecatedapis$json = {
  '1': 'ListconfigsConfigsAllowdeprecatedapis',
  '2': [
    {'1': 'value_bool', '3': 1, '4': 1, '5': 8, '10': 'valueBool'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsAllowdeprecatedapis`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAllowdeprecatedapisDescriptor = $convert.base64Decode(
    'CiVMaXN0Y29uZmlnc0NvbmZpZ3NBbGxvd2RlcHJlY2F0ZWRhcGlzEh0KCnZhbHVlX2Jvb2wYAS'
    'ABKAhSCXZhbHVlQm9vbBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsRpcfileDescriptor instead')
const ListconfigsConfigsRpcfile$json = {
  '1': 'ListconfigsConfigsRpcfile',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsRpcfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsRpcfileDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NScGNmaWxlEhsKCXZhbHVlX3N0chgBIAEoCVIIdmFsdWVTdH'
    'ISFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsDisablepluginDescriptor instead')
const ListconfigsConfigsDisableplugin$json = {
  '1': 'ListconfigsConfigsDisableplugin',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsDisableplugin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsDisablepluginDescriptor = $convert.base64Decode(
    'Ch9MaXN0Y29uZmlnc0NvbmZpZ3NEaXNhYmxlcGx1Z2luEh0KCnZhbHVlc19zdHIYASADKAlSCX'
    'ZhbHVlc1N0chIYCgdzb3VyY2VzGAIgAygJUgdzb3VyY2Vz');

@$core.Deprecated('Use listconfigsConfigsAlwaysuseproxyDescriptor instead')
const ListconfigsConfigsAlwaysuseproxy$json = {
  '1': 'ListconfigsConfigsAlwaysuseproxy',
  '2': [
    {'1': 'value_bool', '3': 1, '4': 1, '5': 8, '10': 'valueBool'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsAlwaysuseproxy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAlwaysuseproxyDescriptor = $convert.base64Decode(
    'CiBMaXN0Y29uZmlnc0NvbmZpZ3NBbHdheXN1c2Vwcm94eRIdCgp2YWx1ZV9ib29sGAEgASgIUg'
    'l2YWx1ZUJvb2wSFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsDaemonDescriptor instead')
const ListconfigsConfigsDaemon$json = {
  '1': 'ListconfigsConfigsDaemon',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsDaemon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsDaemonDescriptor = $convert.base64Decode(
    'ChhMaXN0Y29uZmlnc0NvbmZpZ3NEYWVtb24SEAoDc2V0GAEgASgIUgNzZXQSFgoGc291cmNlGA'
    'IgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsWalletDescriptor instead')
const ListconfigsConfigsWallet$json = {
  '1': 'ListconfigsConfigsWallet',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsWallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsWalletDescriptor = $convert.base64Decode(
    'ChhMaXN0Y29uZmlnc0NvbmZpZ3NXYWxsZXQSGwoJdmFsdWVfc3RyGAEgASgJUgh2YWx1ZVN0ch'
    'IWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsLargechannelsDescriptor instead')
const ListconfigsConfigsLargechannels$json = {
  '1': 'ListconfigsConfigsLargechannels',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsLargechannels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsLargechannelsDescriptor = $convert.base64Decode(
    'Ch9MaXN0Y29uZmlnc0NvbmZpZ3NMYXJnZWNoYW5uZWxzEhAKA3NldBgBIAEoCFIDc2V0EhYKBn'
    'NvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsExperimentaldualfundDescriptor instead')
const ListconfigsConfigsExperimentaldualfund$json = {
  '1': 'ListconfigsConfigsExperimentaldualfund',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsExperimentaldualfund`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsExperimentaldualfundDescriptor = $convert.base64Decode(
    'CiZMaXN0Y29uZmlnc0NvbmZpZ3NFeHBlcmltZW50YWxkdWFsZnVuZBIQCgNzZXQYASABKAhSA3'
    'NldBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsExperimentalsplicingDescriptor instead')
const ListconfigsConfigsExperimentalsplicing$json = {
  '1': 'ListconfigsConfigsExperimentalsplicing',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsExperimentalsplicing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsExperimentalsplicingDescriptor = $convert.base64Decode(
    'CiZMaXN0Y29uZmlnc0NvbmZpZ3NFeHBlcmltZW50YWxzcGxpY2luZxIQCgNzZXQYASABKAhSA3'
    'NldBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsExperimentalonionmessagesDescriptor instead')
const ListconfigsConfigsExperimentalonionmessages$json = {
  '1': 'ListconfigsConfigsExperimentalonionmessages',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsExperimentalonionmessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsExperimentalonionmessagesDescriptor = $convert.base64Decode(
    'CitMaXN0Y29uZmlnc0NvbmZpZ3NFeHBlcmltZW50YWxvbmlvbm1lc3NhZ2VzEhAKA3NldBgBIA'
    'EoCFIDc2V0EhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsExperimentaloffersDescriptor instead')
const ListconfigsConfigsExperimentaloffers$json = {
  '1': 'ListconfigsConfigsExperimentaloffers',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsExperimentaloffers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsExperimentaloffersDescriptor = $convert.base64Decode(
    'CiRMaXN0Y29uZmlnc0NvbmZpZ3NFeHBlcmltZW50YWxvZmZlcnMSEAoDc2V0GAEgASgIUgNzZX'
    'QSFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsExperimentalshutdownwrongfundingDescriptor instead')
const ListconfigsConfigsExperimentalshutdownwrongfunding$json = {
  '1': 'ListconfigsConfigsExperimentalshutdownwrongfunding',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsExperimentalshutdownwrongfunding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsExperimentalshutdownwrongfundingDescriptor = $convert.base64Decode(
    'CjJMaXN0Y29uZmlnc0NvbmZpZ3NFeHBlcmltZW50YWxzaHV0ZG93bndyb25nZnVuZGluZxIQCg'
    'NzZXQYASABKAhSA3NldBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsExperimentalpeerstorageDescriptor instead')
const ListconfigsConfigsExperimentalpeerstorage$json = {
  '1': 'ListconfigsConfigsExperimentalpeerstorage',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsExperimentalpeerstorage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsExperimentalpeerstorageDescriptor = $convert.base64Decode(
    'CilMaXN0Y29uZmlnc0NvbmZpZ3NFeHBlcmltZW50YWxwZWVyc3RvcmFnZRIQCgNzZXQYASABKA'
    'hSA3NldBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsExperimentalanchorsDescriptor instead')
const ListconfigsConfigsExperimentalanchors$json = {
  '1': 'ListconfigsConfigsExperimentalanchors',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsExperimentalanchors`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsExperimentalanchorsDescriptor = $convert.base64Decode(
    'CiVMaXN0Y29uZmlnc0NvbmZpZ3NFeHBlcmltZW50YWxhbmNob3JzEhAKA3NldBgBIAEoCFIDc2'
    'V0EhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsDatabaseupgradeDescriptor instead')
const ListconfigsConfigsDatabaseupgrade$json = {
  '1': 'ListconfigsConfigsDatabaseupgrade',
  '2': [
    {'1': 'value_bool', '3': 1, '4': 1, '5': 8, '10': 'valueBool'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsDatabaseupgrade`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsDatabaseupgradeDescriptor = $convert.base64Decode(
    'CiFMaXN0Y29uZmlnc0NvbmZpZ3NEYXRhYmFzZXVwZ3JhZGUSHQoKdmFsdWVfYm9vbBgBIAEoCF'
    'IJdmFsdWVCb29sEhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsRgbDescriptor instead')
const ListconfigsConfigsRgb$json = {
  '1': 'ListconfigsConfigsRgb',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 12, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsRgb`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsRgbDescriptor = $convert.base64Decode(
    'ChVMaXN0Y29uZmlnc0NvbmZpZ3NSZ2ISGwoJdmFsdWVfc3RyGAEgASgMUgh2YWx1ZVN0chIWCg'
    'Zzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsAliasDescriptor instead')
const ListconfigsConfigsAlias$json = {
  '1': 'ListconfigsConfigsAlias',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAliasDescriptor = $convert.base64Decode(
    'ChdMaXN0Y29uZmlnc0NvbmZpZ3NBbGlhcxIbCgl2YWx1ZV9zdHIYASABKAlSCHZhbHVlU3RyEh'
    'YKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsPidfileDescriptor instead')
const ListconfigsConfigsPidfile$json = {
  '1': 'ListconfigsConfigsPidfile',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsPidfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsPidfileDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NQaWRmaWxlEhsKCXZhbHVlX3N0chgBIAEoCVIIdmFsdWVTdH'
    'ISFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsIgnorefeelimitsDescriptor instead')
const ListconfigsConfigsIgnorefeelimits$json = {
  '1': 'ListconfigsConfigsIgnorefeelimits',
  '2': [
    {'1': 'value_bool', '3': 1, '4': 1, '5': 8, '10': 'valueBool'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsIgnorefeelimits`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsIgnorefeelimitsDescriptor = $convert.base64Decode(
    'CiFMaXN0Y29uZmlnc0NvbmZpZ3NJZ25vcmVmZWVsaW1pdHMSHQoKdmFsdWVfYm9vbBgBIAEoCF'
    'IJdmFsdWVCb29sEhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsWatchtimeblocksDescriptor instead')
const ListconfigsConfigsWatchtimeblocks$json = {
  '1': 'ListconfigsConfigsWatchtimeblocks',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsWatchtimeblocks`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsWatchtimeblocksDescriptor = $convert.base64Decode(
    'CiFMaXN0Y29uZmlnc0NvbmZpZ3NXYXRjaHRpbWVibG9ja3MSGwoJdmFsdWVfaW50GAEgASgNUg'
    'h2YWx1ZUludBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsMaxlocktimeblocksDescriptor instead')
const ListconfigsConfigsMaxlocktimeblocks$json = {
  '1': 'ListconfigsConfigsMaxlocktimeblocks',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsMaxlocktimeblocks`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsMaxlocktimeblocksDescriptor = $convert.base64Decode(
    'CiNMaXN0Y29uZmlnc0NvbmZpZ3NNYXhsb2NrdGltZWJsb2NrcxIbCgl2YWx1ZV9pbnQYASABKA'
    '1SCHZhbHVlSW50EhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsFundingconfirmsDescriptor instead')
const ListconfigsConfigsFundingconfirms$json = {
  '1': 'ListconfigsConfigsFundingconfirms',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsFundingconfirms`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsFundingconfirmsDescriptor = $convert.base64Decode(
    'CiFMaXN0Y29uZmlnc0NvbmZpZ3NGdW5kaW5nY29uZmlybXMSGwoJdmFsdWVfaW50GAEgASgNUg'
    'h2YWx1ZUludBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsCltvdeltaDescriptor instead')
const ListconfigsConfigsCltvdelta$json = {
  '1': 'ListconfigsConfigsCltvdelta',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsCltvdelta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsCltvdeltaDescriptor = $convert.base64Decode(
    'ChtMaXN0Y29uZmlnc0NvbmZpZ3NDbHR2ZGVsdGESGwoJdmFsdWVfaW50GAEgASgNUgh2YWx1ZU'
    'ludBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsCltvfinalDescriptor instead')
const ListconfigsConfigsCltvfinal$json = {
  '1': 'ListconfigsConfigsCltvfinal',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsCltvfinal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsCltvfinalDescriptor = $convert.base64Decode(
    'ChtMaXN0Y29uZmlnc0NvbmZpZ3NDbHR2ZmluYWwSGwoJdmFsdWVfaW50GAEgASgNUgh2YWx1ZU'
    'ludBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsCommittimeDescriptor instead')
const ListconfigsConfigsCommittime$json = {
  '1': 'ListconfigsConfigsCommittime',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsCommittime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsCommittimeDescriptor = $convert.base64Decode(
    'ChxMaXN0Y29uZmlnc0NvbmZpZ3NDb21taXR0aW1lEhsKCXZhbHVlX2ludBgBIAEoDVIIdmFsdW'
    'VJbnQSFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsFeebaseDescriptor instead')
const ListconfigsConfigsFeebase$json = {
  '1': 'ListconfigsConfigsFeebase',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsFeebase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsFeebaseDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NGZWViYXNlEhsKCXZhbHVlX2ludBgBIAEoDVIIdmFsdWVJbn'
    'QSFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsRescanDescriptor instead')
const ListconfigsConfigsRescan$json = {
  '1': 'ListconfigsConfigsRescan',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 18, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsRescan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsRescanDescriptor = $convert.base64Decode(
    'ChhMaXN0Y29uZmlnc0NvbmZpZ3NSZXNjYW4SGwoJdmFsdWVfaW50GAEgASgSUgh2YWx1ZUludB'
    'IWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsFeepersatoshiDescriptor instead')
const ListconfigsConfigsFeepersatoshi$json = {
  '1': 'ListconfigsConfigsFeepersatoshi',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsFeepersatoshi`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsFeepersatoshiDescriptor = $convert.base64Decode(
    'Ch9MaXN0Y29uZmlnc0NvbmZpZ3NGZWVwZXJzYXRvc2hpEhsKCXZhbHVlX2ludBgBIAEoDVIIdm'
    'FsdWVJbnQSFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsMaxconcurrenthtlcsDescriptor instead')
const ListconfigsConfigsMaxconcurrenthtlcs$json = {
  '1': 'ListconfigsConfigsMaxconcurrenthtlcs',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsMaxconcurrenthtlcs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsMaxconcurrenthtlcsDescriptor = $convert.base64Decode(
    'CiRMaXN0Y29uZmlnc0NvbmZpZ3NNYXhjb25jdXJyZW50aHRsY3MSGwoJdmFsdWVfaW50GAEgAS'
    'gNUgh2YWx1ZUludBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsHtlcminimummsatDescriptor instead')
const ListconfigsConfigsHtlcminimummsat$json = {
  '1': 'ListconfigsConfigsHtlcminimummsat',
  '2': [
    {'1': 'value_msat', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'valueMsat'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsHtlcminimummsat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsHtlcminimummsatDescriptor = $convert.base64Decode(
    'CiFMaXN0Y29uZmlnc0NvbmZpZ3NIdGxjbWluaW11bW1zYXQSKgoKdmFsdWVfbXNhdBgBIAEoCz'
    'ILLmNsbi5BbW91bnRSCXZhbHVlTXNhdBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsHtlcmaximummsatDescriptor instead')
const ListconfigsConfigsHtlcmaximummsat$json = {
  '1': 'ListconfigsConfigsHtlcmaximummsat',
  '2': [
    {'1': 'value_msat', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'valueMsat'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsHtlcmaximummsat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsHtlcmaximummsatDescriptor = $convert.base64Decode(
    'CiFMaXN0Y29uZmlnc0NvbmZpZ3NIdGxjbWF4aW11bW1zYXQSKgoKdmFsdWVfbXNhdBgBIAEoCz'
    'ILLmNsbi5BbW91bnRSCXZhbHVlTXNhdBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsMaxdusthtlcexposuremsatDescriptor instead')
const ListconfigsConfigsMaxdusthtlcexposuremsat$json = {
  '1': 'ListconfigsConfigsMaxdusthtlcexposuremsat',
  '2': [
    {'1': 'value_msat', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'valueMsat'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsMaxdusthtlcexposuremsat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsMaxdusthtlcexposuremsatDescriptor = $convert.base64Decode(
    'CilMaXN0Y29uZmlnc0NvbmZpZ3NNYXhkdXN0aHRsY2V4cG9zdXJlbXNhdBIqCgp2YWx1ZV9tc2'
    'F0GAEgASgLMgsuY2xuLkFtb3VudFIJdmFsdWVNc2F0EhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsMincapacitysatDescriptor instead')
const ListconfigsConfigsMincapacitysat$json = {
  '1': 'ListconfigsConfigsMincapacitysat',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 4, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
    {'1': 'dynamic', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'dynamic', '17': true},
  ],
  '8': [
    {'1': '_dynamic'},
  ],
};

/// Descriptor for `ListconfigsConfigsMincapacitysat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsMincapacitysatDescriptor = $convert.base64Decode(
    'CiBMaXN0Y29uZmlnc0NvbmZpZ3NNaW5jYXBhY2l0eXNhdBIbCgl2YWx1ZV9pbnQYASABKARSCH'
    'ZhbHVlSW50EhYKBnNvdXJjZRgCIAEoCVIGc291cmNlEh0KB2R5bmFtaWMYAyABKAhIAFIHZHlu'
    'YW1pY4gBAUIKCghfZHluYW1pYw==');

@$core.Deprecated('Use listconfigsConfigsAddrDescriptor instead')
const ListconfigsConfigsAddr$json = {
  '1': 'ListconfigsConfigsAddr',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsAddr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAddrDescriptor = $convert.base64Decode(
    'ChZMaXN0Y29uZmlnc0NvbmZpZ3NBZGRyEh0KCnZhbHVlc19zdHIYASADKAlSCXZhbHVlc1N0ch'
    'IYCgdzb3VyY2VzGAIgAygJUgdzb3VyY2Vz');

@$core.Deprecated('Use listconfigsConfigsAnnounceaddrDescriptor instead')
const ListconfigsConfigsAnnounceaddr$json = {
  '1': 'ListconfigsConfigsAnnounceaddr',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsAnnounceaddr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAnnounceaddrDescriptor = $convert.base64Decode(
    'Ch5MaXN0Y29uZmlnc0NvbmZpZ3NBbm5vdW5jZWFkZHISHQoKdmFsdWVzX3N0chgBIAMoCVIJdm'
    'FsdWVzU3RyEhgKB3NvdXJjZXMYAiADKAlSB3NvdXJjZXM=');

@$core.Deprecated('Use listconfigsConfigsBindaddrDescriptor instead')
const ListconfigsConfigsBindaddr$json = {
  '1': 'ListconfigsConfigsBindaddr',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsBindaddr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsBindaddrDescriptor = $convert.base64Decode(
    'ChpMaXN0Y29uZmlnc0NvbmZpZ3NCaW5kYWRkchIdCgp2YWx1ZXNfc3RyGAEgAygJUgl2YWx1ZX'
    'NTdHISGAoHc291cmNlcxgCIAMoCVIHc291cmNlcw==');

@$core.Deprecated('Use listconfigsConfigsOfflineDescriptor instead')
const ListconfigsConfigsOffline$json = {
  '1': 'ListconfigsConfigsOffline',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsOffline`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsOfflineDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NPZmZsaW5lEhAKA3NldBgBIAEoCFIDc2V0EhYKBnNvdXJjZR'
    'gCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsAutolistenDescriptor instead')
const ListconfigsConfigsAutolisten$json = {
  '1': 'ListconfigsConfigsAutolisten',
  '2': [
    {'1': 'value_bool', '3': 1, '4': 1, '5': 8, '10': 'valueBool'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsAutolisten`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAutolistenDescriptor = $convert.base64Decode(
    'ChxMaXN0Y29uZmlnc0NvbmZpZ3NBdXRvbGlzdGVuEh0KCnZhbHVlX2Jvb2wYASABKAhSCXZhbH'
    'VlQm9vbBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsProxyDescriptor instead')
const ListconfigsConfigsProxy$json = {
  '1': 'ListconfigsConfigsProxy',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsProxy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsProxyDescriptor = $convert.base64Decode(
    'ChdMaXN0Y29uZmlnc0NvbmZpZ3NQcm94eRIbCgl2YWx1ZV9zdHIYASABKAlSCHZhbHVlU3RyEh'
    'YKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsDisablednsDescriptor instead')
const ListconfigsConfigsDisabledns$json = {
  '1': 'ListconfigsConfigsDisabledns',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsDisabledns`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsDisablednsDescriptor = $convert.base64Decode(
    'ChxMaXN0Y29uZmlnc0NvbmZpZ3NEaXNhYmxlZG5zEhAKA3NldBgBIAEoCFIDc2V0EhYKBnNvdX'
    'JjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsAnnounceaddrdiscoveredDescriptor instead')
const ListconfigsConfigsAnnounceaddrdiscovered$json = {
  '1': 'ListconfigsConfigsAnnounceaddrdiscovered',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 14, '6': '.cln.ListconfigsConfigsAnnounceaddrdiscovered.ListconfigsConfigsAnnounceaddrdiscoveredValue_str', '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
  '4': [ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str$json],
};

@$core.Deprecated('Use listconfigsConfigsAnnounceaddrdiscoveredDescriptor instead')
const ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str$json = {
  '1': 'ListconfigsConfigsAnnounceaddrdiscoveredValue_str',
  '2': [
    {'1': 'TRUE', '2': 0},
    {'1': 'FALSE', '2': 1},
    {'1': 'AUTO', '2': 2},
  ],
};

/// Descriptor for `ListconfigsConfigsAnnounceaddrdiscovered`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAnnounceaddrdiscoveredDescriptor = $convert.base64Decode(
    'CihMaXN0Y29uZmlnc0NvbmZpZ3NBbm5vdW5jZWFkZHJkaXNjb3ZlcmVkEnwKCXZhbHVlX3N0ch'
    'gBIAEoDjJfLmNsbi5MaXN0Y29uZmlnc0NvbmZpZ3NBbm5vdW5jZWFkZHJkaXNjb3ZlcmVkLkxp'
    'c3Rjb25maWdzQ29uZmlnc0Fubm91bmNlYWRkcmRpc2NvdmVyZWRWYWx1ZV9zdHJSCHZhbHVlU3'
    'RyEhYKBnNvdXJjZRgCIAEoCVIGc291cmNlIlIKMUxpc3Rjb25maWdzQ29uZmlnc0Fubm91bmNl'
    'YWRkcmRpc2NvdmVyZWRWYWx1ZV9zdHISCAoEVFJVRRAAEgkKBUZBTFNFEAESCAoEQVVUTxAC');

@$core.Deprecated('Use listconfigsConfigsAnnounceaddrdiscoveredportDescriptor instead')
const ListconfigsConfigsAnnounceaddrdiscoveredport$json = {
  '1': 'ListconfigsConfigsAnnounceaddrdiscoveredport',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsAnnounceaddrdiscoveredport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAnnounceaddrdiscoveredportDescriptor = $convert.base64Decode(
    'CixMaXN0Y29uZmlnc0NvbmZpZ3NBbm5vdW5jZWFkZHJkaXNjb3ZlcmVkcG9ydBIbCgl2YWx1ZV'
    '9pbnQYASABKA1SCHZhbHVlSW50EhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsEncryptedhsmDescriptor instead')
const ListconfigsConfigsEncryptedhsm$json = {
  '1': 'ListconfigsConfigsEncryptedhsm',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsEncryptedhsm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsEncryptedhsmDescriptor = $convert.base64Decode(
    'Ch5MaXN0Y29uZmlnc0NvbmZpZ3NFbmNyeXB0ZWRoc20SEAoDc2V0GAEgASgIUgNzZXQSFgoGc2'
    '91cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsRpcfilemodeDescriptor instead')
const ListconfigsConfigsRpcfilemode$json = {
  '1': 'ListconfigsConfigsRpcfilemode',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsRpcfilemode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsRpcfilemodeDescriptor = $convert.base64Decode(
    'Ch1MaXN0Y29uZmlnc0NvbmZpZ3NScGNmaWxlbW9kZRIbCgl2YWx1ZV9zdHIYASABKAlSCHZhbH'
    'VlU3RyEhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsLoglevelDescriptor instead')
const ListconfigsConfigsLoglevel$json = {
  '1': 'ListconfigsConfigsLoglevel',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsLoglevel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsLoglevelDescriptor = $convert.base64Decode(
    'ChpMaXN0Y29uZmlnc0NvbmZpZ3NMb2dsZXZlbBIbCgl2YWx1ZV9zdHIYASABKAlSCHZhbHVlU3'
    'RyEhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsLogprefixDescriptor instead')
const ListconfigsConfigsLogprefix$json = {
  '1': 'ListconfigsConfigsLogprefix',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsLogprefix`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsLogprefixDescriptor = $convert.base64Decode(
    'ChtMaXN0Y29uZmlnc0NvbmZpZ3NMb2dwcmVmaXgSGwoJdmFsdWVfc3RyGAEgASgJUgh2YWx1ZV'
    'N0chIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsLogfileDescriptor instead')
const ListconfigsConfigsLogfile$json = {
  '1': 'ListconfigsConfigsLogfile',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsLogfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsLogfileDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc0NvbmZpZ3NMb2dmaWxlEh0KCnZhbHVlc19zdHIYASADKAlSCXZhbHVlc1'
    'N0chIYCgdzb3VyY2VzGAIgAygJUgdzb3VyY2Vz');

@$core.Deprecated('Use listconfigsConfigsLogtimestampsDescriptor instead')
const ListconfigsConfigsLogtimestamps$json = {
  '1': 'ListconfigsConfigsLogtimestamps',
  '2': [
    {'1': 'value_bool', '3': 1, '4': 1, '5': 8, '10': 'valueBool'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsLogtimestamps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsLogtimestampsDescriptor = $convert.base64Decode(
    'Ch9MaXN0Y29uZmlnc0NvbmZpZ3NMb2d0aW1lc3RhbXBzEh0KCnZhbHVlX2Jvb2wYASABKAhSCX'
    'ZhbHVlQm9vbBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsForcefeeratesDescriptor instead')
const ListconfigsConfigsForcefeerates$json = {
  '1': 'ListconfigsConfigsForcefeerates',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsForcefeerates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsForcefeeratesDescriptor = $convert.base64Decode(
    'Ch9MaXN0Y29uZmlnc0NvbmZpZ3NGb3JjZWZlZXJhdGVzEhsKCXZhbHVlX3N0chgBIAEoCVIIdm'
    'FsdWVTdHISFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsConfigsSubdaemonDescriptor instead')
const ListconfigsConfigsSubdaemon$json = {
  '1': 'ListconfigsConfigsSubdaemon',
  '2': [
    {'1': 'values_str', '3': 1, '4': 3, '5': 9, '10': 'valuesStr'},
    {'1': 'sources', '3': 2, '4': 3, '5': 9, '10': 'sources'},
  ],
};

/// Descriptor for `ListconfigsConfigsSubdaemon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsSubdaemonDescriptor = $convert.base64Decode(
    'ChtMaXN0Y29uZmlnc0NvbmZpZ3NTdWJkYWVtb24SHQoKdmFsdWVzX3N0chgBIAMoCVIJdmFsdW'
    'VzU3RyEhgKB3NvdXJjZXMYAiADKAlSB3NvdXJjZXM=');

@$core.Deprecated('Use listconfigsConfigsFetchinvoicenoconnectDescriptor instead')
const ListconfigsConfigsFetchinvoicenoconnect$json = {
  '1': 'ListconfigsConfigsFetchinvoicenoconnect',
  '2': [
    {'1': 'set', '3': 1, '4': 1, '5': 8, '10': 'set'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
    {'1': 'plugin', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'plugin', '17': true},
  ],
  '8': [
    {'1': '_plugin'},
  ],
};

/// Descriptor for `ListconfigsConfigsFetchinvoicenoconnect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsFetchinvoicenoconnectDescriptor = $convert.base64Decode(
    'CidMaXN0Y29uZmlnc0NvbmZpZ3NGZXRjaGludm9pY2Vub2Nvbm5lY3QSEAoDc2V0GAEgASgIUg'
    'NzZXQSFgoGc291cmNlGAIgASgJUgZzb3VyY2USGwoGcGx1Z2luGAMgASgJSABSBnBsdWdpbogB'
    'AUIJCgdfcGx1Z2lu');

@$core.Deprecated('Use listconfigsConfigsAccepthtlctlvtypesDescriptor instead')
const ListconfigsConfigsAccepthtlctlvtypes$json = {
  '1': 'ListconfigsConfigsAccepthtlctlvtypes',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsAccepthtlctlvtypes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAccepthtlctlvtypesDescriptor = $convert.base64Decode(
    'CiRMaXN0Y29uZmlnc0NvbmZpZ3NBY2NlcHRodGxjdGx2dHlwZXMSGwoJdmFsdWVfc3RyGAEgAS'
    'gJUgh2YWx1ZVN0chIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsTorservicepasswordDescriptor instead')
const ListconfigsConfigsTorservicepassword$json = {
  '1': 'ListconfigsConfigsTorservicepassword',
  '2': [
    {'1': 'value_str', '3': 1, '4': 1, '5': 9, '10': 'valueStr'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsTorservicepassword`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsTorservicepasswordDescriptor = $convert.base64Decode(
    'CiRMaXN0Y29uZmlnc0NvbmZpZ3NUb3JzZXJ2aWNlcGFzc3dvcmQSGwoJdmFsdWVfc3RyGAEgAS'
    'gJUgh2YWx1ZVN0chIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsAnnounceaddrdnsDescriptor instead')
const ListconfigsConfigsAnnounceaddrdns$json = {
  '1': 'ListconfigsConfigsAnnounceaddrdns',
  '2': [
    {'1': 'value_bool', '3': 1, '4': 1, '5': 8, '10': 'valueBool'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsAnnounceaddrdns`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsAnnounceaddrdnsDescriptor = $convert.base64Decode(
    'CiFMaXN0Y29uZmlnc0NvbmZpZ3NBbm5vdW5jZWFkZHJkbnMSHQoKdmFsdWVfYm9vbBgBIAEoCF'
    'IJdmFsdWVCb29sEhYKBnNvdXJjZRgCIAEoCVIGc291cmNl');

@$core.Deprecated('Use listconfigsConfigsRequireconfirmedinputsDescriptor instead')
const ListconfigsConfigsRequireconfirmedinputs$json = {
  '1': 'ListconfigsConfigsRequireconfirmedinputs',
  '2': [
    {'1': 'value_bool', '3': 1, '4': 1, '5': 8, '10': 'valueBool'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsRequireconfirmedinputs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsRequireconfirmedinputsDescriptor = $convert.base64Decode(
    'CihMaXN0Y29uZmlnc0NvbmZpZ3NSZXF1aXJlY29uZmlybWVkaW5wdXRzEh0KCnZhbHVlX2Jvb2'
    'wYASABKAhSCXZhbHVlQm9vbBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsCommitfeeDescriptor instead')
const ListconfigsConfigsCommitfee$json = {
  '1': 'ListconfigsConfigsCommitfee',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 4, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsCommitfee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsCommitfeeDescriptor = $convert.base64Decode(
    'ChtMaXN0Y29uZmlnc0NvbmZpZ3NDb21taXRmZWUSGwoJdmFsdWVfaW50GAEgASgEUgh2YWx1ZU'
    'ludBIWCgZzb3VyY2UYAiABKAlSBnNvdXJjZQ==');

@$core.Deprecated('Use listconfigsConfigsCommitfeerateoffsetDescriptor instead')
const ListconfigsConfigsCommitfeerateoffset$json = {
  '1': 'ListconfigsConfigsCommitfeerateoffset',
  '2': [
    {'1': 'value_int', '3': 1, '4': 1, '5': 13, '10': 'valueInt'},
    {'1': 'source', '3': 2, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ListconfigsConfigsCommitfeerateoffset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsConfigsCommitfeerateoffsetDescriptor = $convert.base64Decode(
    'CiVMaXN0Y29uZmlnc0NvbmZpZ3NDb21taXRmZWVyYXRlb2Zmc2V0EhsKCXZhbHVlX2ludBgBIA'
    'EoDVIIdmFsdWVJbnQSFgoGc291cmNlGAIgASgJUgZzb3VyY2U=');

@$core.Deprecated('Use listconfigsPluginsDescriptor instead')
const ListconfigsPlugins$json = {
  '1': 'ListconfigsPlugins',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'options', '3': 3, '4': 1, '5': 11, '6': '.cln.ListconfigsPluginsOptions', '9': 0, '10': 'options', '17': true},
  ],
  '8': [
    {'1': '_options'},
  ],
};

/// Descriptor for `ListconfigsPlugins`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsPluginsDescriptor = $convert.base64Decode(
    'ChJMaXN0Y29uZmlnc1BsdWdpbnMSEgoEcGF0aBgBIAEoCVIEcGF0aBISCgRuYW1lGAIgASgJUg'
    'RuYW1lEj0KB29wdGlvbnMYAyABKAsyHi5jbG4uTGlzdGNvbmZpZ3NQbHVnaW5zT3B0aW9uc0gA'
    'UgdvcHRpb25ziAEBQgoKCF9vcHRpb25z');

@$core.Deprecated('Use listconfigsPluginsOptionsDescriptor instead')
const ListconfigsPluginsOptions$json = {
  '1': 'ListconfigsPluginsOptions',
};

/// Descriptor for `ListconfigsPluginsOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsPluginsOptionsDescriptor = $convert.base64Decode(
    'ChlMaXN0Y29uZmlnc1BsdWdpbnNPcHRpb25z');

@$core.Deprecated('Use listconfigsImportantpluginsDescriptor instead')
const ListconfigsImportantplugins$json = {
  '1': 'ListconfigsImportantplugins',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'options', '3': 3, '4': 1, '5': 11, '6': '.cln.ListconfigsImportantpluginsOptions', '9': 0, '10': 'options', '17': true},
  ],
  '8': [
    {'1': '_options'},
  ],
};

/// Descriptor for `ListconfigsImportantplugins`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsImportantpluginsDescriptor = $convert.base64Decode(
    'ChtMaXN0Y29uZmlnc0ltcG9ydGFudHBsdWdpbnMSEgoEcGF0aBgBIAEoCVIEcGF0aBISCgRuYW'
    '1lGAIgASgJUgRuYW1lEkYKB29wdGlvbnMYAyABKAsyJy5jbG4uTGlzdGNvbmZpZ3NJbXBvcnRh'
    'bnRwbHVnaW5zT3B0aW9uc0gAUgdvcHRpb25ziAEBQgoKCF9vcHRpb25z');

@$core.Deprecated('Use listconfigsImportantpluginsOptionsDescriptor instead')
const ListconfigsImportantpluginsOptions$json = {
  '1': 'ListconfigsImportantpluginsOptions',
};

/// Descriptor for `ListconfigsImportantpluginsOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listconfigsImportantpluginsOptionsDescriptor = $convert.base64Decode(
    'CiJMaXN0Y29uZmlnc0ltcG9ydGFudHBsdWdpbnNPcHRpb25z');

@$core.Deprecated('Use stopRequestDescriptor instead')
const StopRequest$json = {
  '1': 'StopRequest',
};

/// Descriptor for `StopRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopRequestDescriptor = $convert.base64Decode(
    'CgtTdG9wUmVxdWVzdA==');

@$core.Deprecated('Use stopResponseDescriptor instead')
const StopResponse$json = {
  '1': 'StopResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.cln.StopResponse.StopResult', '9': 0, '10': 'result', '17': true},
  ],
  '4': [StopResponse_StopResult$json],
  '8': [
    {'1': '_result'},
  ],
};

@$core.Deprecated('Use stopResponseDescriptor instead')
const StopResponse_StopResult$json = {
  '1': 'StopResult',
  '2': [
    {'1': 'SHUTDOWN_COMPLETE', '2': 0},
  ],
};

/// Descriptor for `StopResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopResponseDescriptor = $convert.base64Decode(
    'CgxTdG9wUmVzcG9uc2USOQoGcmVzdWx0GAEgASgOMhwuY2xuLlN0b3BSZXNwb25zZS5TdG9wUm'
    'VzdWx0SABSBnJlc3VsdIgBASIjCgpTdG9wUmVzdWx0EhUKEVNIVVRET1dOX0NPTVBMRVRFEABC'
    'CQoHX3Jlc3VsdA==');

@$core.Deprecated('Use helpRequestDescriptor instead')
const HelpRequest$json = {
  '1': 'HelpRequest',
  '2': [
    {'1': 'command', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'command', '17': true},
  ],
  '8': [
    {'1': '_command'},
  ],
};

/// Descriptor for `HelpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helpRequestDescriptor = $convert.base64Decode(
    'CgtIZWxwUmVxdWVzdBIdCgdjb21tYW5kGAEgASgJSABSB2NvbW1hbmSIAQFCCgoIX2NvbW1hbm'
    'Q=');

@$core.Deprecated('Use helpResponseDescriptor instead')
const HelpResponse$json = {
  '1': 'HelpResponse',
  '2': [
    {'1': 'help', '3': 1, '4': 3, '5': 11, '6': '.cln.HelpHelp', '10': 'help'},
    {'1': 'format_hint', '3': 2, '4': 1, '5': 14, '6': '.cln.HelpResponse.HelpFormathint', '9': 0, '10': 'formatHint', '17': true},
  ],
  '4': [HelpResponse_HelpFormathint$json],
  '8': [
    {'1': '_format_hint'},
  ],
};

@$core.Deprecated('Use helpResponseDescriptor instead')
const HelpResponse_HelpFormathint$json = {
  '1': 'HelpFormathint',
  '2': [
    {'1': 'SIMPLE', '2': 0},
  ],
};

/// Descriptor for `HelpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helpResponseDescriptor = $convert.base64Decode(
    'CgxIZWxwUmVzcG9uc2USIQoEaGVscBgBIAMoCzINLmNsbi5IZWxwSGVscFIEaGVscBJGCgtmb3'
    'JtYXRfaGludBgCIAEoDjIgLmNsbi5IZWxwUmVzcG9uc2UuSGVscEZvcm1hdGhpbnRIAFIKZm9y'
    'bWF0SGludIgBASIcCg5IZWxwRm9ybWF0aGludBIKCgZTSU1QTEUQAEIOCgxfZm9ybWF0X2hpbn'
    'Q=');

@$core.Deprecated('Use helpHelpDescriptor instead')
const HelpHelp$json = {
  '1': 'HelpHelp',
  '2': [
    {'1': 'command', '3': 1, '4': 1, '5': 9, '10': 'command'},
  ],
};

/// Descriptor for `HelpHelp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helpHelpDescriptor = $convert.base64Decode(
    'CghIZWxwSGVscBIYCgdjb21tYW5kGAEgASgJUgdjb21tYW5k');

@$core.Deprecated('Use preapprovekeysendRequestDescriptor instead')
const PreapprovekeysendRequest$json = {
  '1': 'PreapprovekeysendRequest',
  '2': [
    {'1': 'destination', '3': 1, '4': 1, '5': 12, '10': 'destination'},
    {'1': 'payment_hash', '3': 2, '4': 1, '5': 12, '10': 'paymentHash'},
    {'1': 'amount_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'amountMsat'},
  ],
};

/// Descriptor for `PreapprovekeysendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preapprovekeysendRequestDescriptor = $convert.base64Decode(
    'ChhQcmVhcHByb3Zla2V5c2VuZFJlcXVlc3QSIAoLZGVzdGluYXRpb24YASABKAxSC2Rlc3Rpbm'
    'F0aW9uEiEKDHBheW1lbnRfaGFzaBgCIAEoDFILcGF5bWVudEhhc2gSLAoLYW1vdW50X21zYXQY'
    'AyABKAsyCy5jbG4uQW1vdW50UgphbW91bnRNc2F0');

@$core.Deprecated('Use preapprovekeysendResponseDescriptor instead')
const PreapprovekeysendResponse$json = {
  '1': 'PreapprovekeysendResponse',
};

/// Descriptor for `PreapprovekeysendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preapprovekeysendResponseDescriptor = $convert.base64Decode(
    'ChlQcmVhcHByb3Zla2V5c2VuZFJlc3BvbnNl');

@$core.Deprecated('Use preapproveinvoiceRequestDescriptor instead')
const PreapproveinvoiceRequest$json = {
  '1': 'PreapproveinvoiceRequest',
  '2': [
    {'1': 'bolt11', '3': 1, '4': 1, '5': 9, '10': 'bolt11'},
  ],
};

/// Descriptor for `PreapproveinvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preapproveinvoiceRequestDescriptor = $convert.base64Decode(
    'ChhQcmVhcHByb3ZlaW52b2ljZVJlcXVlc3QSFgoGYm9sdDExGAEgASgJUgZib2x0MTE=');

@$core.Deprecated('Use preapproveinvoiceResponseDescriptor instead')
const PreapproveinvoiceResponse$json = {
  '1': 'PreapproveinvoiceResponse',
};

/// Descriptor for `PreapproveinvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preapproveinvoiceResponseDescriptor = $convert.base64Decode(
    'ChlQcmVhcHByb3ZlaW52b2ljZVJlc3BvbnNl');

@$core.Deprecated('Use staticbackupRequestDescriptor instead')
const StaticbackupRequest$json = {
  '1': 'StaticbackupRequest',
};

/// Descriptor for `StaticbackupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staticbackupRequestDescriptor = $convert.base64Decode(
    'ChNTdGF0aWNiYWNrdXBSZXF1ZXN0');

@$core.Deprecated('Use staticbackupResponseDescriptor instead')
const StaticbackupResponse$json = {
  '1': 'StaticbackupResponse',
  '2': [
    {'1': 'scb', '3': 1, '4': 3, '5': 12, '10': 'scb'},
  ],
};

/// Descriptor for `StaticbackupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staticbackupResponseDescriptor = $convert.base64Decode(
    'ChRTdGF0aWNiYWNrdXBSZXNwb25zZRIQCgNzY2IYASADKAxSA3NjYg==');

@$core.Deprecated('Use bkprchannelsapyRequestDescriptor instead')
const BkprchannelsapyRequest$json = {
  '1': 'BkprchannelsapyRequest',
  '2': [
    {'1': 'start_time', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'startTime', '17': true},
    {'1': 'end_time', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'endTime', '17': true},
  ],
  '8': [
    {'1': '_start_time'},
    {'1': '_end_time'},
  ],
};

/// Descriptor for `BkprchannelsapyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprchannelsapyRequestDescriptor = $convert.base64Decode(
    'ChZCa3ByY2hhbm5lbHNhcHlSZXF1ZXN0EiIKCnN0YXJ0X3RpbWUYASABKARIAFIJc3RhcnRUaW'
    '1liAEBEh4KCGVuZF90aW1lGAIgASgESAFSB2VuZFRpbWWIAQFCDQoLX3N0YXJ0X3RpbWVCCwoJ'
    'X2VuZF90aW1l');

@$core.Deprecated('Use bkprchannelsapyResponseDescriptor instead')
const BkprchannelsapyResponse$json = {
  '1': 'BkprchannelsapyResponse',
  '2': [
    {'1': 'channels_apy', '3': 1, '4': 3, '5': 11, '6': '.cln.BkprchannelsapyChannels_apy', '10': 'channelsApy'},
  ],
};

/// Descriptor for `BkprchannelsapyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprchannelsapyResponseDescriptor = $convert.base64Decode(
    'ChdCa3ByY2hhbm5lbHNhcHlSZXNwb25zZRJDCgxjaGFubmVsc19hcHkYASADKAsyIC5jbG4uQm'
    'twcmNoYW5uZWxzYXB5Q2hhbm5lbHNfYXB5UgtjaGFubmVsc0FweQ==');

@$core.Deprecated('Use bkprchannelsapyChannels_apyDescriptor instead')
const BkprchannelsapyChannels_apy$json = {
  '1': 'BkprchannelsapyChannels_apy',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    {'1': 'routed_out_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'routedOutMsat'},
    {'1': 'routed_in_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'routedInMsat'},
    {'1': 'lease_fee_paid_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'leaseFeePaidMsat'},
    {'1': 'lease_fee_earned_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'leaseFeeEarnedMsat'},
    {'1': 'pushed_out_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'pushedOutMsat'},
    {'1': 'pushed_in_msat', '3': 7, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'pushedInMsat'},
    {'1': 'our_start_balance_msat', '3': 8, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'ourStartBalanceMsat'},
    {'1': 'channel_start_balance_msat', '3': 9, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'channelStartBalanceMsat'},
    {'1': 'fees_out_msat', '3': 10, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'feesOutMsat'},
    {'1': 'fees_in_msat', '3': 11, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'feesInMsat', '17': true},
    {'1': 'utilization_out', '3': 12, '4': 1, '5': 9, '10': 'utilizationOut'},
    {'1': 'utilization_out_initial', '3': 13, '4': 1, '5': 9, '9': 1, '10': 'utilizationOutInitial', '17': true},
    {'1': 'utilization_in', '3': 14, '4': 1, '5': 9, '10': 'utilizationIn'},
    {'1': 'utilization_in_initial', '3': 15, '4': 1, '5': 9, '9': 2, '10': 'utilizationInInitial', '17': true},
    {'1': 'apy_out', '3': 16, '4': 1, '5': 9, '10': 'apyOut'},
    {'1': 'apy_out_initial', '3': 17, '4': 1, '5': 9, '9': 3, '10': 'apyOutInitial', '17': true},
    {'1': 'apy_in', '3': 18, '4': 1, '5': 9, '10': 'apyIn'},
    {'1': 'apy_in_initial', '3': 19, '4': 1, '5': 9, '9': 4, '10': 'apyInInitial', '17': true},
    {'1': 'apy_total', '3': 20, '4': 1, '5': 9, '10': 'apyTotal'},
    {'1': 'apy_total_initial', '3': 21, '4': 1, '5': 9, '9': 5, '10': 'apyTotalInitial', '17': true},
    {'1': 'apy_lease', '3': 22, '4': 1, '5': 9, '9': 6, '10': 'apyLease', '17': true},
  ],
  '8': [
    {'1': '_fees_in_msat'},
    {'1': '_utilization_out_initial'},
    {'1': '_utilization_in_initial'},
    {'1': '_apy_out_initial'},
    {'1': '_apy_in_initial'},
    {'1': '_apy_total_initial'},
    {'1': '_apy_lease'},
  ],
};

/// Descriptor for `BkprchannelsapyChannels_apy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprchannelsapyChannels_apyDescriptor = $convert.base64Decode(
    'ChtCa3ByY2hhbm5lbHNhcHlDaGFubmVsc19hcHkSGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudB'
    'IzCg9yb3V0ZWRfb3V0X21zYXQYAiABKAsyCy5jbG4uQW1vdW50Ug1yb3V0ZWRPdXRNc2F0EjEK'
    'DnJvdXRlZF9pbl9tc2F0GAMgASgLMgsuY2xuLkFtb3VudFIMcm91dGVkSW5Nc2F0EjoKE2xlYX'
    'NlX2ZlZV9wYWlkX21zYXQYBCABKAsyCy5jbG4uQW1vdW50UhBsZWFzZUZlZVBhaWRNc2F0Ej4K'
    'FWxlYXNlX2ZlZV9lYXJuZWRfbXNhdBgFIAEoCzILLmNsbi5BbW91bnRSEmxlYXNlRmVlRWFybm'
    'VkTXNhdBIzCg9wdXNoZWRfb3V0X21zYXQYBiABKAsyCy5jbG4uQW1vdW50Ug1wdXNoZWRPdXRN'
    'c2F0EjEKDnB1c2hlZF9pbl9tc2F0GAcgASgLMgsuY2xuLkFtb3VudFIMcHVzaGVkSW5Nc2F0Ek'
    'AKFm91cl9zdGFydF9iYWxhbmNlX21zYXQYCCABKAsyCy5jbG4uQW1vdW50UhNvdXJTdGFydEJh'
    'bGFuY2VNc2F0EkgKGmNoYW5uZWxfc3RhcnRfYmFsYW5jZV9tc2F0GAkgASgLMgsuY2xuLkFtb3'
    'VudFIXY2hhbm5lbFN0YXJ0QmFsYW5jZU1zYXQSLwoNZmVlc19vdXRfbXNhdBgKIAEoCzILLmNs'
    'bi5BbW91bnRSC2ZlZXNPdXRNc2F0EjIKDGZlZXNfaW5fbXNhdBgLIAEoCzILLmNsbi5BbW91bn'
    'RIAFIKZmVlc0luTXNhdIgBARInCg91dGlsaXphdGlvbl9vdXQYDCABKAlSDnV0aWxpemF0aW9u'
    'T3V0EjsKF3V0aWxpemF0aW9uX291dF9pbml0aWFsGA0gASgJSAFSFXV0aWxpemF0aW9uT3V0SW'
    '5pdGlhbIgBARIlCg51dGlsaXphdGlvbl9pbhgOIAEoCVINdXRpbGl6YXRpb25JbhI5ChZ1dGls'
    'aXphdGlvbl9pbl9pbml0aWFsGA8gASgJSAJSFHV0aWxpemF0aW9uSW5Jbml0aWFsiAEBEhcKB2'
    'FweV9vdXQYECABKAlSBmFweU91dBIrCg9hcHlfb3V0X2luaXRpYWwYESABKAlIA1INYXB5T3V0'
    'SW5pdGlhbIgBARIVCgZhcHlfaW4YEiABKAlSBWFweUluEikKDmFweV9pbl9pbml0aWFsGBMgAS'
    'gJSARSDGFweUluSW5pdGlhbIgBARIbCglhcHlfdG90YWwYFCABKAlSCGFweVRvdGFsEi8KEWFw'
    'eV90b3RhbF9pbml0aWFsGBUgASgJSAVSD2FweVRvdGFsSW5pdGlhbIgBARIgCglhcHlfbGVhc2'
    'UYFiABKAlIBlIIYXB5TGVhc2WIAQFCDwoNX2ZlZXNfaW5fbXNhdEIaChhfdXRpbGl6YXRpb25f'
    'b3V0X2luaXRpYWxCGQoXX3V0aWxpemF0aW9uX2luX2luaXRpYWxCEgoQX2FweV9vdXRfaW5pdG'
    'lhbEIRCg9fYXB5X2luX2luaXRpYWxCFAoSX2FweV90b3RhbF9pbml0aWFsQgwKCl9hcHlfbGVh'
    'c2U=');

@$core.Deprecated('Use bkprdumpincomecsvRequestDescriptor instead')
const BkprdumpincomecsvRequest$json = {
  '1': 'BkprdumpincomecsvRequest',
  '2': [
    {'1': 'csv_format', '3': 1, '4': 1, '5': 9, '10': 'csvFormat'},
    {'1': 'csv_file', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'csvFile', '17': true},
    {'1': 'consolidate_fees', '3': 3, '4': 1, '5': 8, '9': 1, '10': 'consolidateFees', '17': true},
    {'1': 'start_time', '3': 4, '4': 1, '5': 4, '9': 2, '10': 'startTime', '17': true},
    {'1': 'end_time', '3': 5, '4': 1, '5': 4, '9': 3, '10': 'endTime', '17': true},
  ],
  '8': [
    {'1': '_csv_file'},
    {'1': '_consolidate_fees'},
    {'1': '_start_time'},
    {'1': '_end_time'},
  ],
};

/// Descriptor for `BkprdumpincomecsvRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprdumpincomecsvRequestDescriptor = $convert.base64Decode(
    'ChhCa3ByZHVtcGluY29tZWNzdlJlcXVlc3QSHQoKY3N2X2Zvcm1hdBgBIAEoCVIJY3N2Rm9ybW'
    'F0Eh4KCGNzdl9maWxlGAIgASgJSABSB2NzdkZpbGWIAQESLgoQY29uc29saWRhdGVfZmVlcxgD'
    'IAEoCEgBUg9jb25zb2xpZGF0ZUZlZXOIAQESIgoKc3RhcnRfdGltZRgEIAEoBEgCUglzdGFydF'
    'RpbWWIAQESHgoIZW5kX3RpbWUYBSABKARIA1IHZW5kVGltZYgBAUILCglfY3N2X2ZpbGVCEwoR'
    'X2NvbnNvbGlkYXRlX2ZlZXNCDQoLX3N0YXJ0X3RpbWVCCwoJX2VuZF90aW1l');

@$core.Deprecated('Use bkprdumpincomecsvResponseDescriptor instead')
const BkprdumpincomecsvResponse$json = {
  '1': 'BkprdumpincomecsvResponse',
  '2': [
    {'1': 'csv_file', '3': 1, '4': 1, '5': 9, '10': 'csvFile'},
    {'1': 'csv_format', '3': 2, '4': 1, '5': 14, '6': '.cln.BkprdumpincomecsvResponse.BkprdumpincomecsvCsv_format', '10': 'csvFormat'},
  ],
  '4': [BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format$json],
};

@$core.Deprecated('Use bkprdumpincomecsvResponseDescriptor instead')
const BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format$json = {
  '1': 'BkprdumpincomecsvCsv_format',
  '2': [
    {'1': 'COINTRACKER', '2': 0},
    {'1': 'KOINLY', '2': 1},
    {'1': 'HARMONY', '2': 2},
    {'1': 'QUICKBOOKS', '2': 3},
  ],
};

/// Descriptor for `BkprdumpincomecsvResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprdumpincomecsvResponseDescriptor = $convert.base64Decode(
    'ChlCa3ByZHVtcGluY29tZWNzdlJlc3BvbnNlEhkKCGNzdl9maWxlGAEgASgJUgdjc3ZGaWxlEl'
    'kKCmNzdl9mb3JtYXQYAiABKA4yOi5jbG4uQmtwcmR1bXBpbmNvbWVjc3ZSZXNwb25zZS5Ca3By'
    'ZHVtcGluY29tZWNzdkNzdl9mb3JtYXRSCWNzdkZvcm1hdCJXChtCa3ByZHVtcGluY29tZWNzdk'
    'Nzdl9mb3JtYXQSDwoLQ09JTlRSQUNLRVIQABIKCgZLT0lOTFkQARILCgdIQVJNT05ZEAISDgoK'
    'UVVJQ0tCT09LUxAD');

@$core.Deprecated('Use bkprinspectRequestDescriptor instead')
const BkprinspectRequest$json = {
  '1': 'BkprinspectRequest',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
  ],
};

/// Descriptor for `BkprinspectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprinspectRequestDescriptor = $convert.base64Decode(
    'ChJCa3ByaW5zcGVjdFJlcXVlc3QSGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudA==');

@$core.Deprecated('Use bkprinspectResponseDescriptor instead')
const BkprinspectResponse$json = {
  '1': 'BkprinspectResponse',
  '2': [
    {'1': 'txs', '3': 1, '4': 3, '5': 11, '6': '.cln.BkprinspectTxs', '10': 'txs'},
  ],
};

/// Descriptor for `BkprinspectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprinspectResponseDescriptor = $convert.base64Decode(
    'ChNCa3ByaW5zcGVjdFJlc3BvbnNlEiUKA3R4cxgBIAMoCzITLmNsbi5Ca3ByaW5zcGVjdFR4c1'
    'IDdHhz');

@$core.Deprecated('Use bkprinspectTxsDescriptor instead')
const BkprinspectTxs$json = {
  '1': 'BkprinspectTxs',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    {'1': 'blockheight', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'blockheight', '17': true},
    {'1': 'fees_paid_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'feesPaidMsat'},
    {'1': 'outputs', '3': 4, '4': 3, '5': 11, '6': '.cln.BkprinspectTxsOutputs', '10': 'outputs'},
  ],
  '8': [
    {'1': '_blockheight'},
  ],
};

/// Descriptor for `BkprinspectTxs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprinspectTxsDescriptor = $convert.base64Decode(
    'Cg5Ca3ByaW5zcGVjdFR4cxISCgR0eGlkGAEgASgMUgR0eGlkEiUKC2Jsb2NraGVpZ2h0GAIgAS'
    'gNSABSC2Jsb2NraGVpZ2h0iAEBEjEKDmZlZXNfcGFpZF9tc2F0GAMgASgLMgsuY2xuLkFtb3Vu'
    'dFIMZmVlc1BhaWRNc2F0EjQKB291dHB1dHMYBCADKAsyGi5jbG4uQmtwcmluc3BlY3RUeHNPdX'
    'RwdXRzUgdvdXRwdXRzQg4KDF9ibG9ja2hlaWdodA==');

@$core.Deprecated('Use bkprinspectTxsOutputsDescriptor instead')
const BkprinspectTxsOutputs$json = {
  '1': 'BkprinspectTxsOutputs',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    {'1': 'outnum', '3': 2, '4': 1, '5': 13, '10': 'outnum'},
    {'1': 'output_value_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'outputValueMsat'},
    {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'credit_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '9': 0, '10': 'creditMsat', '17': true},
    {'1': 'debit_msat', '3': 6, '4': 1, '5': 11, '6': '.cln.Amount', '9': 1, '10': 'debitMsat', '17': true},
    {'1': 'originating_account', '3': 7, '4': 1, '5': 9, '9': 2, '10': 'originatingAccount', '17': true},
    {'1': 'output_tag', '3': 8, '4': 1, '5': 9, '9': 3, '10': 'outputTag', '17': true},
    {'1': 'spend_tag', '3': 9, '4': 1, '5': 9, '9': 4, '10': 'spendTag', '17': true},
    {'1': 'spending_txid', '3': 10, '4': 1, '5': 12, '9': 5, '10': 'spendingTxid', '17': true},
    {'1': 'payment_id', '3': 11, '4': 1, '5': 12, '9': 6, '10': 'paymentId', '17': true},
  ],
  '8': [
    {'1': '_credit_msat'},
    {'1': '_debit_msat'},
    {'1': '_originating_account'},
    {'1': '_output_tag'},
    {'1': '_spend_tag'},
    {'1': '_spending_txid'},
    {'1': '_payment_id'},
  ],
};

/// Descriptor for `BkprinspectTxsOutputs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprinspectTxsOutputsDescriptor = $convert.base64Decode(
    'ChVCa3ByaW5zcGVjdFR4c091dHB1dHMSGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudBIWCgZvdX'
    'RudW0YAiABKA1SBm91dG51bRI3ChFvdXRwdXRfdmFsdWVfbXNhdBgDIAEoCzILLmNsbi5BbW91'
    'bnRSD291dHB1dFZhbHVlTXNhdBIaCghjdXJyZW5jeRgEIAEoCVIIY3VycmVuY3kSMQoLY3JlZG'
    'l0X21zYXQYBSABKAsyCy5jbG4uQW1vdW50SABSCmNyZWRpdE1zYXSIAQESLwoKZGViaXRfbXNh'
    'dBgGIAEoCzILLmNsbi5BbW91bnRIAVIJZGViaXRNc2F0iAEBEjQKE29yaWdpbmF0aW5nX2FjY2'
    '91bnQYByABKAlIAlISb3JpZ2luYXRpbmdBY2NvdW50iAEBEiIKCm91dHB1dF90YWcYCCABKAlI'
    'A1IJb3V0cHV0VGFniAEBEiAKCXNwZW5kX3RhZxgJIAEoCUgEUghzcGVuZFRhZ4gBARIoCg1zcG'
    'VuZGluZ190eGlkGAogASgMSAVSDHNwZW5kaW5nVHhpZIgBARIiCgpwYXltZW50X2lkGAsgASgM'
    'SAZSCXBheW1lbnRJZIgBAUIOCgxfY3JlZGl0X21zYXRCDQoLX2RlYml0X21zYXRCFgoUX29yaW'
    'dpbmF0aW5nX2FjY291bnRCDQoLX291dHB1dF90YWdCDAoKX3NwZW5kX3RhZ0IQCg5fc3BlbmRp'
    'bmdfdHhpZEINCgtfcGF5bWVudF9pZA==');

@$core.Deprecated('Use bkprlistaccounteventsRequestDescriptor instead')
const BkprlistaccounteventsRequest$json = {
  '1': 'BkprlistaccounteventsRequest',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'account', '17': true},
    {'1': 'payment_id', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'paymentId', '17': true},
  ],
  '8': [
    {'1': '_account'},
    {'1': '_payment_id'},
  ],
};

/// Descriptor for `BkprlistaccounteventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistaccounteventsRequestDescriptor = $convert.base64Decode(
    'ChxCa3BybGlzdGFjY291bnRldmVudHNSZXF1ZXN0Eh0KB2FjY291bnQYASABKAlIAFIHYWNjb3'
    'VudIgBARIiCgpwYXltZW50X2lkGAIgASgJSAFSCXBheW1lbnRJZIgBAUIKCghfYWNjb3VudEIN'
    'CgtfcGF5bWVudF9pZA==');

@$core.Deprecated('Use bkprlistaccounteventsResponseDescriptor instead')
const BkprlistaccounteventsResponse$json = {
  '1': 'BkprlistaccounteventsResponse',
  '2': [
    {'1': 'events', '3': 1, '4': 3, '5': 11, '6': '.cln.BkprlistaccounteventsEvents', '10': 'events'},
  ],
};

/// Descriptor for `BkprlistaccounteventsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistaccounteventsResponseDescriptor = $convert.base64Decode(
    'Ch1Ca3BybGlzdGFjY291bnRldmVudHNSZXNwb25zZRI4CgZldmVudHMYASADKAsyIC5jbG4uQm'
    'twcmxpc3RhY2NvdW50ZXZlbnRzRXZlbnRzUgZldmVudHM=');

@$core.Deprecated('Use bkprlistaccounteventsEventsDescriptor instead')
const BkprlistaccounteventsEvents$json = {
  '1': 'BkprlistaccounteventsEvents',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    {'1': 'item_type', '3': 2, '4': 1, '5': 14, '6': '.cln.BkprlistaccounteventsEvents.BkprlistaccounteventsEventsType', '10': 'itemType'},
    {'1': 'tag', '3': 3, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'credit_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'creditMsat'},
    {'1': 'debit_msat', '3': 5, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'debitMsat'},
    {'1': 'currency', '3': 6, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'timestamp', '3': 7, '4': 1, '5': 13, '10': 'timestamp'},
    {'1': 'outpoint', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'outpoint', '17': true},
    {'1': 'blockheight', '3': 9, '4': 1, '5': 13, '9': 1, '10': 'blockheight', '17': true},
    {'1': 'origin', '3': 10, '4': 1, '5': 9, '9': 2, '10': 'origin', '17': true},
    {'1': 'payment_id', '3': 11, '4': 1, '5': 12, '9': 3, '10': 'paymentId', '17': true},
    {'1': 'txid', '3': 12, '4': 1, '5': 12, '9': 4, '10': 'txid', '17': true},
    {'1': 'description', '3': 13, '4': 1, '5': 9, '9': 5, '10': 'description', '17': true},
    {'1': 'fees_msat', '3': 14, '4': 1, '5': 11, '6': '.cln.Amount', '9': 6, '10': 'feesMsat', '17': true},
    {'1': 'is_rebalance', '3': 15, '4': 1, '5': 8, '9': 7, '10': 'isRebalance', '17': true},
    {'1': 'part_id', '3': 16, '4': 1, '5': 13, '9': 8, '10': 'partId', '17': true},
  ],
  '4': [BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType$json],
  '8': [
    {'1': '_outpoint'},
    {'1': '_blockheight'},
    {'1': '_origin'},
    {'1': '_payment_id'},
    {'1': '_txid'},
    {'1': '_description'},
    {'1': '_fees_msat'},
    {'1': '_is_rebalance'},
    {'1': '_part_id'},
  ],
};

@$core.Deprecated('Use bkprlistaccounteventsEventsDescriptor instead')
const BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType$json = {
  '1': 'BkprlistaccounteventsEventsType',
  '2': [
    {'1': 'ONCHAIN_FEE', '2': 0},
    {'1': 'CHAIN', '2': 1},
    {'1': 'CHANNEL', '2': 2},
  ],
};

/// Descriptor for `BkprlistaccounteventsEvents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistaccounteventsEventsDescriptor = $convert.base64Decode(
    'ChtCa3BybGlzdGFjY291bnRldmVudHNFdmVudHMSGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudB'
    'JdCglpdGVtX3R5cGUYAiABKA4yQC5jbG4uQmtwcmxpc3RhY2NvdW50ZXZlbnRzRXZlbnRzLkJr'
    'cHJsaXN0YWNjb3VudGV2ZW50c0V2ZW50c1R5cGVSCGl0ZW1UeXBlEhAKA3RhZxgDIAEoCVIDdG'
    'FnEiwKC2NyZWRpdF9tc2F0GAQgASgLMgsuY2xuLkFtb3VudFIKY3JlZGl0TXNhdBIqCgpkZWJp'
    'dF9tc2F0GAUgASgLMgsuY2xuLkFtb3VudFIJZGViaXRNc2F0EhoKCGN1cnJlbmN5GAYgASgJUg'
    'hjdXJyZW5jeRIcCgl0aW1lc3RhbXAYByABKA1SCXRpbWVzdGFtcBIfCghvdXRwb2ludBgIIAEo'
    'CUgAUghvdXRwb2ludIgBARIlCgtibG9ja2hlaWdodBgJIAEoDUgBUgtibG9ja2hlaWdodIgBAR'
    'IbCgZvcmlnaW4YCiABKAlIAlIGb3JpZ2luiAEBEiIKCnBheW1lbnRfaWQYCyABKAxIA1IJcGF5'
    'bWVudElkiAEBEhcKBHR4aWQYDCABKAxIBFIEdHhpZIgBARIlCgtkZXNjcmlwdGlvbhgNIAEoCU'
    'gFUgtkZXNjcmlwdGlvbogBARItCglmZWVzX21zYXQYDiABKAsyCy5jbG4uQW1vdW50SAZSCGZl'
    'ZXNNc2F0iAEBEiYKDGlzX3JlYmFsYW5jZRgPIAEoCEgHUgtpc1JlYmFsYW5jZYgBARIcCgdwYX'
    'J0X2lkGBAgASgNSAhSBnBhcnRJZIgBASJKCh9Ca3BybGlzdGFjY291bnRldmVudHNFdmVudHNU'
    'eXBlEg8KC09OQ0hBSU5fRkVFEAASCQoFQ0hBSU4QARILCgdDSEFOTkVMEAJCCwoJX291dHBvaW'
    '50Qg4KDF9ibG9ja2hlaWdodEIJCgdfb3JpZ2luQg0KC19wYXltZW50X2lkQgcKBV90eGlkQg4K'
    'DF9kZXNjcmlwdGlvbkIMCgpfZmVlc19tc2F0Qg8KDV9pc19yZWJhbGFuY2VCCgoIX3BhcnRfaW'
    'Q=');

@$core.Deprecated('Use bkprlistbalancesRequestDescriptor instead')
const BkprlistbalancesRequest$json = {
  '1': 'BkprlistbalancesRequest',
};

/// Descriptor for `BkprlistbalancesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistbalancesRequestDescriptor = $convert.base64Decode(
    'ChdCa3BybGlzdGJhbGFuY2VzUmVxdWVzdA==');

@$core.Deprecated('Use bkprlistbalancesResponseDescriptor instead')
const BkprlistbalancesResponse$json = {
  '1': 'BkprlistbalancesResponse',
  '2': [
    {'1': 'accounts', '3': 1, '4': 3, '5': 11, '6': '.cln.BkprlistbalancesAccounts', '10': 'accounts'},
  ],
};

/// Descriptor for `BkprlistbalancesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistbalancesResponseDescriptor = $convert.base64Decode(
    'ChhCa3BybGlzdGJhbGFuY2VzUmVzcG9uc2USOQoIYWNjb3VudHMYASADKAsyHS5jbG4uQmtwcm'
    'xpc3RiYWxhbmNlc0FjY291bnRzUghhY2NvdW50cw==');

@$core.Deprecated('Use bkprlistbalancesAccountsDescriptor instead')
const BkprlistbalancesAccounts$json = {
  '1': 'BkprlistbalancesAccounts',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    {'1': 'balances', '3': 2, '4': 3, '5': 11, '6': '.cln.BkprlistbalancesAccountsBalances', '10': 'balances'},
    {'1': 'peer_id', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'peerId', '17': true},
    {'1': 'we_opened', '3': 4, '4': 1, '5': 8, '9': 1, '10': 'weOpened', '17': true},
    {'1': 'account_closed', '3': 5, '4': 1, '5': 8, '9': 2, '10': 'accountClosed', '17': true},
    {'1': 'account_resolved', '3': 6, '4': 1, '5': 8, '9': 3, '10': 'accountResolved', '17': true},
    {'1': 'resolved_at_block', '3': 7, '4': 1, '5': 13, '9': 4, '10': 'resolvedAtBlock', '17': true},
  ],
  '8': [
    {'1': '_peer_id'},
    {'1': '_we_opened'},
    {'1': '_account_closed'},
    {'1': '_account_resolved'},
    {'1': '_resolved_at_block'},
  ],
};

/// Descriptor for `BkprlistbalancesAccounts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistbalancesAccountsDescriptor = $convert.base64Decode(
    'ChhCa3BybGlzdGJhbGFuY2VzQWNjb3VudHMSGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudBJBCg'
    'hiYWxhbmNlcxgCIAMoCzIlLmNsbi5Ca3BybGlzdGJhbGFuY2VzQWNjb3VudHNCYWxhbmNlc1II'
    'YmFsYW5jZXMSHAoHcGVlcl9pZBgDIAEoDEgAUgZwZWVySWSIAQESIAoJd2Vfb3BlbmVkGAQgAS'
    'gISAFSCHdlT3BlbmVkiAEBEioKDmFjY291bnRfY2xvc2VkGAUgASgISAJSDWFjY291bnRDbG9z'
    'ZWSIAQESLgoQYWNjb3VudF9yZXNvbHZlZBgGIAEoCEgDUg9hY2NvdW50UmVzb2x2ZWSIAQESLw'
    'oRcmVzb2x2ZWRfYXRfYmxvY2sYByABKA1IBFIPcmVzb2x2ZWRBdEJsb2NriAEBQgoKCF9wZWVy'
    'X2lkQgwKCl93ZV9vcGVuZWRCEQoPX2FjY291bnRfY2xvc2VkQhMKEV9hY2NvdW50X3Jlc29sdm'
    'VkQhQKEl9yZXNvbHZlZF9hdF9ibG9jaw==');

@$core.Deprecated('Use bkprlistbalancesAccountsBalancesDescriptor instead')
const BkprlistbalancesAccountsBalances$json = {
  '1': 'BkprlistbalancesAccountsBalances',
  '2': [
    {'1': 'balance_msat', '3': 1, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'balanceMsat'},
    {'1': 'coin_type', '3': 2, '4': 1, '5': 9, '10': 'coinType'},
  ],
};

/// Descriptor for `BkprlistbalancesAccountsBalances`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistbalancesAccountsBalancesDescriptor = $convert.base64Decode(
    'CiBCa3BybGlzdGJhbGFuY2VzQWNjb3VudHNCYWxhbmNlcxIuCgxiYWxhbmNlX21zYXQYASABKA'
    'syCy5jbG4uQW1vdW50UgtiYWxhbmNlTXNhdBIbCgljb2luX3R5cGUYAiABKAlSCGNvaW5UeXBl');

@$core.Deprecated('Use bkprlistincomeRequestDescriptor instead')
const BkprlistincomeRequest$json = {
  '1': 'BkprlistincomeRequest',
  '2': [
    {'1': 'consolidate_fees', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'consolidateFees', '17': true},
    {'1': 'start_time', '3': 2, '4': 1, '5': 13, '9': 1, '10': 'startTime', '17': true},
    {'1': 'end_time', '3': 3, '4': 1, '5': 13, '9': 2, '10': 'endTime', '17': true},
  ],
  '8': [
    {'1': '_consolidate_fees'},
    {'1': '_start_time'},
    {'1': '_end_time'},
  ],
};

/// Descriptor for `BkprlistincomeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistincomeRequestDescriptor = $convert.base64Decode(
    'ChVCa3BybGlzdGluY29tZVJlcXVlc3QSLgoQY29uc29saWRhdGVfZmVlcxgBIAEoCEgAUg9jb2'
    '5zb2xpZGF0ZUZlZXOIAQESIgoKc3RhcnRfdGltZRgCIAEoDUgBUglzdGFydFRpbWWIAQESHgoI'
    'ZW5kX3RpbWUYAyABKA1IAlIHZW5kVGltZYgBAUITChFfY29uc29saWRhdGVfZmVlc0INCgtfc3'
    'RhcnRfdGltZUILCglfZW5kX3RpbWU=');

@$core.Deprecated('Use bkprlistincomeResponseDescriptor instead')
const BkprlistincomeResponse$json = {
  '1': 'BkprlistincomeResponse',
  '2': [
    {'1': 'income_events', '3': 1, '4': 3, '5': 11, '6': '.cln.BkprlistincomeIncome_events', '10': 'incomeEvents'},
  ],
};

/// Descriptor for `BkprlistincomeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistincomeResponseDescriptor = $convert.base64Decode(
    'ChZCa3BybGlzdGluY29tZVJlc3BvbnNlEkUKDWluY29tZV9ldmVudHMYASADKAsyIC5jbG4uQm'
    'twcmxpc3RpbmNvbWVJbmNvbWVfZXZlbnRzUgxpbmNvbWVFdmVudHM=');

@$core.Deprecated('Use bkprlistincomeIncome_eventsDescriptor instead')
const BkprlistincomeIncome_events$json = {
  '1': 'BkprlistincomeIncome_events',
  '2': [
    {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    {'1': 'tag', '3': 2, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'credit_msat', '3': 3, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'creditMsat'},
    {'1': 'debit_msat', '3': 4, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'debitMsat'},
    {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'timestamp', '3': 6, '4': 1, '5': 13, '10': 'timestamp'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'outpoint', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'outpoint', '17': true},
    {'1': 'txid', '3': 9, '4': 1, '5': 12, '9': 2, '10': 'txid', '17': true},
    {'1': 'payment_id', '3': 10, '4': 1, '5': 12, '9': 3, '10': 'paymentId', '17': true},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_outpoint'},
    {'1': '_txid'},
    {'1': '_payment_id'},
  ],
};

/// Descriptor for `BkprlistincomeIncome_events`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bkprlistincomeIncome_eventsDescriptor = $convert.base64Decode(
    'ChtCa3BybGlzdGluY29tZUluY29tZV9ldmVudHMSGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudB'
    'IQCgN0YWcYAiABKAlSA3RhZxIsCgtjcmVkaXRfbXNhdBgDIAEoCzILLmNsbi5BbW91bnRSCmNy'
    'ZWRpdE1zYXQSKgoKZGViaXRfbXNhdBgEIAEoCzILLmNsbi5BbW91bnRSCWRlYml0TXNhdBIaCg'
    'hjdXJyZW5jeRgFIAEoCVIIY3VycmVuY3kSHAoJdGltZXN0YW1wGAYgASgNUgl0aW1lc3RhbXAS'
    'JQoLZGVzY3JpcHRpb24YByABKAlIAFILZGVzY3JpcHRpb26IAQESHwoIb3V0cG9pbnQYCCABKA'
    'lIAVIIb3V0cG9pbnSIAQESFwoEdHhpZBgJIAEoDEgCUgR0eGlkiAEBEiIKCnBheW1lbnRfaWQY'
    'CiABKAxIA1IJcGF5bWVudElkiAEBQg4KDF9kZXNjcmlwdGlvbkILCglfb3V0cG9pbnRCBwoFX3'
    'R4aWRCDQoLX3BheW1lbnRfaWQ=');

@$core.Deprecated('Use blacklistruneRequestDescriptor instead')
const BlacklistruneRequest$json = {
  '1': 'BlacklistruneRequest',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'start', '17': true},
    {'1': 'end', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'end', '17': true},
  ],
  '8': [
    {'1': '_start'},
    {'1': '_end'},
  ],
};

/// Descriptor for `BlacklistruneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blacklistruneRequestDescriptor = $convert.base64Decode(
    'ChRCbGFja2xpc3RydW5lUmVxdWVzdBIZCgVzdGFydBgBIAEoBEgAUgVzdGFydIgBARIVCgNlbm'
    'QYAiABKARIAVIDZW5kiAEBQggKBl9zdGFydEIGCgRfZW5k');

@$core.Deprecated('Use blacklistruneResponseDescriptor instead')
const BlacklistruneResponse$json = {
  '1': 'BlacklistruneResponse',
  '2': [
    {'1': 'blacklist', '3': 1, '4': 3, '5': 11, '6': '.cln.BlacklistruneBlacklist', '10': 'blacklist'},
  ],
};

/// Descriptor for `BlacklistruneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blacklistruneResponseDescriptor = $convert.base64Decode(
    'ChVCbGFja2xpc3RydW5lUmVzcG9uc2USOQoJYmxhY2tsaXN0GAEgAygLMhsuY2xuLkJsYWNrbG'
    'lzdHJ1bmVCbGFja2xpc3RSCWJsYWNrbGlzdA==');

@$core.Deprecated('Use blacklistruneBlacklistDescriptor instead')
const BlacklistruneBlacklist$json = {
  '1': 'BlacklistruneBlacklist',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 4, '10': 'start'},
    {'1': 'end', '3': 2, '4': 1, '5': 4, '10': 'end'},
  ],
};

/// Descriptor for `BlacklistruneBlacklist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blacklistruneBlacklistDescriptor = $convert.base64Decode(
    'ChZCbGFja2xpc3RydW5lQmxhY2tsaXN0EhQKBXN0YXJ0GAEgASgEUgVzdGFydBIQCgNlbmQYAi'
    'ABKARSA2VuZA==');

@$core.Deprecated('Use checkruneRequestDescriptor instead')
const CheckruneRequest$json = {
  '1': 'CheckruneRequest',
  '2': [
    {'1': 'rune', '3': 1, '4': 1, '5': 9, '10': 'rune'},
    {'1': 'nodeid', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'nodeid', '17': true},
    {'1': 'method', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'method', '17': true},
    {'1': 'params', '3': 4, '4': 3, '5': 9, '10': 'params'},
  ],
  '8': [
    {'1': '_nodeid'},
    {'1': '_method'},
  ],
};

/// Descriptor for `CheckruneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkruneRequestDescriptor = $convert.base64Decode(
    'ChBDaGVja3J1bmVSZXF1ZXN0EhIKBHJ1bmUYASABKAlSBHJ1bmUSGwoGbm9kZWlkGAIgASgJSA'
    'BSBm5vZGVpZIgBARIbCgZtZXRob2QYAyABKAlIAVIGbWV0aG9kiAEBEhYKBnBhcmFtcxgEIAMo'
    'CVIGcGFyYW1zQgkKB19ub2RlaWRCCQoHX21ldGhvZA==');

@$core.Deprecated('Use checkruneResponseDescriptor instead')
const CheckruneResponse$json = {
  '1': 'CheckruneResponse',
  '2': [
    {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
  ],
};

/// Descriptor for `CheckruneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkruneResponseDescriptor = $convert.base64Decode(
    'ChFDaGVja3J1bmVSZXNwb25zZRIUCgV2YWxpZBgBIAEoCFIFdmFsaWQ=');

@$core.Deprecated('Use createruneRequestDescriptor instead')
const CreateruneRequest$json = {
  '1': 'CreateruneRequest',
  '2': [
    {'1': 'rune', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'rune', '17': true},
    {'1': 'restrictions', '3': 2, '4': 3, '5': 9, '10': 'restrictions'},
  ],
  '8': [
    {'1': '_rune'},
  ],
};

/// Descriptor for `CreateruneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createruneRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVydW5lUmVxdWVzdBIXCgRydW5lGAEgASgJSABSBHJ1bmWIAQESIgoMcmVzdHJpY3'
    'Rpb25zGAIgAygJUgxyZXN0cmljdGlvbnNCBwoFX3J1bmU=');

@$core.Deprecated('Use createruneResponseDescriptor instead')
const CreateruneResponse$json = {
  '1': 'CreateruneResponse',
  '2': [
    {'1': 'rune', '3': 1, '4': 1, '5': 9, '10': 'rune'},
    {'1': 'unique_id', '3': 2, '4': 1, '5': 9, '10': 'uniqueId'},
    {'1': 'warning_unrestricted_rune', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'warningUnrestrictedRune', '17': true},
  ],
  '8': [
    {'1': '_warning_unrestricted_rune'},
  ],
};

/// Descriptor for `CreateruneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createruneResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVydW5lUmVzcG9uc2USEgoEcnVuZRgBIAEoCVIEcnVuZRIbCgl1bmlxdWVfaWQYAi'
    'ABKAlSCHVuaXF1ZUlkEj8KGXdhcm5pbmdfdW5yZXN0cmljdGVkX3J1bmUYAyABKAlIAFIXd2Fy'
    'bmluZ1VucmVzdHJpY3RlZFJ1bmWIAQFCHAoaX3dhcm5pbmdfdW5yZXN0cmljdGVkX3J1bmU=');

@$core.Deprecated('Use showrunesRequestDescriptor instead')
const ShowrunesRequest$json = {
  '1': 'ShowrunesRequest',
  '2': [
    {'1': 'rune', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'rune', '17': true},
  ],
  '8': [
    {'1': '_rune'},
  ],
};

/// Descriptor for `ShowrunesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showrunesRequestDescriptor = $convert.base64Decode(
    'ChBTaG93cnVuZXNSZXF1ZXN0EhcKBHJ1bmUYASABKAlIAFIEcnVuZYgBAUIHCgVfcnVuZQ==');

@$core.Deprecated('Use showrunesResponseDescriptor instead')
const ShowrunesResponse$json = {
  '1': 'ShowrunesResponse',
  '2': [
    {'1': 'runes', '3': 1, '4': 3, '5': 11, '6': '.cln.ShowrunesRunes', '10': 'runes'},
  ],
};

/// Descriptor for `ShowrunesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showrunesResponseDescriptor = $convert.base64Decode(
    'ChFTaG93cnVuZXNSZXNwb25zZRIpCgVydW5lcxgBIAMoCzITLmNsbi5TaG93cnVuZXNSdW5lc1'
    'IFcnVuZXM=');

@$core.Deprecated('Use showrunesRunesDescriptor instead')
const ShowrunesRunes$json = {
  '1': 'ShowrunesRunes',
  '2': [
    {'1': 'rune', '3': 1, '4': 1, '5': 9, '10': 'rune'},
    {'1': 'unique_id', '3': 2, '4': 1, '5': 9, '10': 'uniqueId'},
    {'1': 'restrictions', '3': 3, '4': 3, '5': 11, '6': '.cln.ShowrunesRunesRestrictions', '10': 'restrictions'},
    {'1': 'restrictions_as_english', '3': 4, '4': 1, '5': 9, '10': 'restrictionsAsEnglish'},
    {'1': 'stored', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'stored', '17': true},
    {'1': 'blacklisted', '3': 6, '4': 1, '5': 8, '9': 1, '10': 'blacklisted', '17': true},
    {'1': 'last_used', '3': 7, '4': 1, '5': 1, '9': 2, '10': 'lastUsed', '17': true},
    {'1': 'our_rune', '3': 8, '4': 1, '5': 8, '9': 3, '10': 'ourRune', '17': true},
  ],
  '8': [
    {'1': '_stored'},
    {'1': '_blacklisted'},
    {'1': '_last_used'},
    {'1': '_our_rune'},
  ],
};

/// Descriptor for `ShowrunesRunes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showrunesRunesDescriptor = $convert.base64Decode(
    'Cg5TaG93cnVuZXNSdW5lcxISCgRydW5lGAEgASgJUgRydW5lEhsKCXVuaXF1ZV9pZBgCIAEoCV'
    'IIdW5pcXVlSWQSQwoMcmVzdHJpY3Rpb25zGAMgAygLMh8uY2xuLlNob3dydW5lc1J1bmVzUmVz'
    'dHJpY3Rpb25zUgxyZXN0cmljdGlvbnMSNgoXcmVzdHJpY3Rpb25zX2FzX2VuZ2xpc2gYBCABKA'
    'lSFXJlc3RyaWN0aW9uc0FzRW5nbGlzaBIbCgZzdG9yZWQYBSABKAhIAFIGc3RvcmVkiAEBEiUK'
    'C2JsYWNrbGlzdGVkGAYgASgISAFSC2JsYWNrbGlzdGVkiAEBEiAKCWxhc3RfdXNlZBgHIAEoAU'
    'gCUghsYXN0VXNlZIgBARIeCghvdXJfcnVuZRgIIAEoCEgDUgdvdXJSdW5liAEBQgkKB19zdG9y'
    'ZWRCDgoMX2JsYWNrbGlzdGVkQgwKCl9sYXN0X3VzZWRCCwoJX291cl9ydW5l');

@$core.Deprecated('Use showrunesRunesRestrictionsDescriptor instead')
const ShowrunesRunesRestrictions$json = {
  '1': 'ShowrunesRunesRestrictions',
  '2': [
    {'1': 'alternatives', '3': 1, '4': 3, '5': 11, '6': '.cln.ShowrunesRunesRestrictionsAlternatives', '10': 'alternatives'},
    {'1': 'english', '3': 2, '4': 1, '5': 9, '10': 'english'},
  ],
};

/// Descriptor for `ShowrunesRunesRestrictions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showrunesRunesRestrictionsDescriptor = $convert.base64Decode(
    'ChpTaG93cnVuZXNSdW5lc1Jlc3RyaWN0aW9ucxJPCgxhbHRlcm5hdGl2ZXMYASADKAsyKy5jbG'
    '4uU2hvd3J1bmVzUnVuZXNSZXN0cmljdGlvbnNBbHRlcm5hdGl2ZXNSDGFsdGVybmF0aXZlcxIY'
    'CgdlbmdsaXNoGAIgASgJUgdlbmdsaXNo');

@$core.Deprecated('Use showrunesRunesRestrictionsAlternativesDescriptor instead')
const ShowrunesRunesRestrictionsAlternatives$json = {
  '1': 'ShowrunesRunesRestrictionsAlternatives',
  '2': [
    {'1': 'fieldname', '3': 1, '4': 1, '5': 9, '10': 'fieldname'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'condition', '3': 3, '4': 1, '5': 9, '10': 'condition'},
    {'1': 'english', '3': 4, '4': 1, '5': 9, '10': 'english'},
  ],
};

/// Descriptor for `ShowrunesRunesRestrictionsAlternatives`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showrunesRunesRestrictionsAlternativesDescriptor = $convert.base64Decode(
    'CiZTaG93cnVuZXNSdW5lc1Jlc3RyaWN0aW9uc0FsdGVybmF0aXZlcxIcCglmaWVsZG5hbWUYAS'
    'ABKAlSCWZpZWxkbmFtZRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUSHAoJY29uZGl0aW9uGAMgASgJ'
    'Ugljb25kaXRpb24SGAoHZW5nbGlzaBgEIAEoCVIHZW5nbGlzaA==');

@$core.Deprecated('Use streamBlockAddedRequestDescriptor instead')
const StreamBlockAddedRequest$json = {
  '1': 'StreamBlockAddedRequest',
};

/// Descriptor for `StreamBlockAddedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamBlockAddedRequestDescriptor = $convert.base64Decode(
    'ChdTdHJlYW1CbG9ja0FkZGVkUmVxdWVzdA==');

@$core.Deprecated('Use blockAddedNotificationDescriptor instead')
const BlockAddedNotification$json = {
  '1': 'BlockAddedNotification',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    {'1': 'height', '3': 2, '4': 1, '5': 13, '10': 'height'},
  ],
};

/// Descriptor for `BlockAddedNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockAddedNotificationDescriptor = $convert.base64Decode(
    'ChZCbG9ja0FkZGVkTm90aWZpY2F0aW9uEhIKBGhhc2gYASABKAxSBGhhc2gSFgoGaGVpZ2h0GA'
    'IgASgNUgZoZWlnaHQ=');

@$core.Deprecated('Use streamChannelOpenFailedRequestDescriptor instead')
const StreamChannelOpenFailedRequest$json = {
  '1': 'StreamChannelOpenFailedRequest',
};

/// Descriptor for `StreamChannelOpenFailedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamChannelOpenFailedRequestDescriptor = $convert.base64Decode(
    'Ch5TdHJlYW1DaGFubmVsT3BlbkZhaWxlZFJlcXVlc3Q=');

@$core.Deprecated('Use channelOpenFailedNotificationDescriptor instead')
const ChannelOpenFailedNotification$json = {
  '1': 'ChannelOpenFailedNotification',
  '2': [
    {'1': 'channel_id', '3': 1, '4': 1, '5': 12, '10': 'channelId'},
  ],
};

/// Descriptor for `ChannelOpenFailedNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelOpenFailedNotificationDescriptor = $convert.base64Decode(
    'Ch1DaGFubmVsT3BlbkZhaWxlZE5vdGlmaWNhdGlvbhIdCgpjaGFubmVsX2lkGAEgASgMUgljaG'
    'FubmVsSWQ=');

@$core.Deprecated('Use streamChannelOpenedRequestDescriptor instead')
const StreamChannelOpenedRequest$json = {
  '1': 'StreamChannelOpenedRequest',
};

/// Descriptor for `StreamChannelOpenedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamChannelOpenedRequestDescriptor = $convert.base64Decode(
    'ChpTdHJlYW1DaGFubmVsT3BlbmVkUmVxdWVzdA==');

@$core.Deprecated('Use channelOpenedNotificationDescriptor instead')
const ChannelOpenedNotification$json = {
  '1': 'ChannelOpenedNotification',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'funding_msat', '3': 2, '4': 1, '5': 11, '6': '.cln.Amount', '10': 'fundingMsat'},
    {'1': 'funding_txid', '3': 3, '4': 1, '5': 12, '10': 'fundingTxid'},
    {'1': 'channel_ready', '3': 4, '4': 1, '5': 8, '10': 'channelReady'},
  ],
};

/// Descriptor for `ChannelOpenedNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelOpenedNotificationDescriptor = $convert.base64Decode(
    'ChlDaGFubmVsT3BlbmVkTm90aWZpY2F0aW9uEg4KAmlkGAEgASgMUgJpZBIuCgxmdW5kaW5nX2'
    '1zYXQYAiABKAsyCy5jbG4uQW1vdW50UgtmdW5kaW5nTXNhdBIhCgxmdW5kaW5nX3R4aWQYAyAB'
    'KAxSC2Z1bmRpbmdUeGlkEiMKDWNoYW5uZWxfcmVhZHkYBCABKAhSDGNoYW5uZWxSZWFkeQ==');

@$core.Deprecated('Use streamConnectRequestDescriptor instead')
const StreamConnectRequest$json = {
  '1': 'StreamConnectRequest',
};

/// Descriptor for `StreamConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamConnectRequestDescriptor = $convert.base64Decode(
    'ChRTdHJlYW1Db25uZWN0UmVxdWVzdA==');

@$core.Deprecated('Use peerConnectNotificationDescriptor instead')
const PeerConnectNotification$json = {
  '1': 'PeerConnectNotification',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    {'1': 'direction', '3': 2, '4': 1, '5': 14, '6': '.cln.PeerConnectNotification.PeerConnectDirection', '10': 'direction'},
    {'1': 'address', '3': 3, '4': 1, '5': 11, '6': '.cln.PeerConnectAddress', '10': 'address'},
  ],
  '4': [PeerConnectNotification_PeerConnectDirection$json],
};

@$core.Deprecated('Use peerConnectNotificationDescriptor instead')
const PeerConnectNotification_PeerConnectDirection$json = {
  '1': 'PeerConnectDirection',
  '2': [
    {'1': 'IN', '2': 0},
    {'1': 'OUT', '2': 1},
  ],
};

/// Descriptor for `PeerConnectNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerConnectNotificationDescriptor = $convert.base64Decode(
    'ChdQZWVyQ29ubmVjdE5vdGlmaWNhdGlvbhIOCgJpZBgBIAEoDFICaWQSTwoJZGlyZWN0aW9uGA'
    'IgASgOMjEuY2xuLlBlZXJDb25uZWN0Tm90aWZpY2F0aW9uLlBlZXJDb25uZWN0RGlyZWN0aW9u'
    'UglkaXJlY3Rpb24SMQoHYWRkcmVzcxgDIAEoCzIXLmNsbi5QZWVyQ29ubmVjdEFkZHJlc3NSB2'
    'FkZHJlc3MiJwoUUGVlckNvbm5lY3REaXJlY3Rpb24SBgoCSU4QABIHCgNPVVQQAQ==');

@$core.Deprecated('Use peerConnectAddressDescriptor instead')
const PeerConnectAddress$json = {
  '1': 'PeerConnectAddress',
  '2': [
    {'1': 'item_type', '3': 1, '4': 1, '5': 14, '6': '.cln.PeerConnectAddress.PeerConnectAddressType', '10': 'itemType'},
    {'1': 'socket', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'socket', '17': true},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'address', '17': true},
    {'1': 'port', '3': 4, '4': 1, '5': 13, '9': 2, '10': 'port', '17': true},
  ],
  '4': [PeerConnectAddress_PeerConnectAddressType$json],
  '8': [
    {'1': '_socket'},
    {'1': '_address'},
    {'1': '_port'},
  ],
};

@$core.Deprecated('Use peerConnectAddressDescriptor instead')
const PeerConnectAddress_PeerConnectAddressType$json = {
  '1': 'PeerConnectAddressType',
  '2': [
    {'1': 'LOCAL_SOCKET', '2': 0},
    {'1': 'IPV4', '2': 1},
    {'1': 'IPV6', '2': 2},
    {'1': 'TORV2', '2': 3},
    {'1': 'TORV3', '2': 4},
  ],
};

/// Descriptor for `PeerConnectAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerConnectAddressDescriptor = $convert.base64Decode(
    'ChJQZWVyQ29ubmVjdEFkZHJlc3MSSwoJaXRlbV90eXBlGAEgASgOMi4uY2xuLlBlZXJDb25uZW'
    'N0QWRkcmVzcy5QZWVyQ29ubmVjdEFkZHJlc3NUeXBlUghpdGVtVHlwZRIbCgZzb2NrZXQYAiAB'
    'KAlIAFIGc29ja2V0iAEBEh0KB2FkZHJlc3MYAyABKAlIAVIHYWRkcmVzc4gBARIXCgRwb3J0GA'
    'QgASgNSAJSBHBvcnSIAQEiVAoWUGVlckNvbm5lY3RBZGRyZXNzVHlwZRIQCgxMT0NBTF9TT0NL'
    'RVQQABIICgRJUFY0EAESCAoESVBWNhACEgkKBVRPUlYyEAMSCQoFVE9SVjMQBEIJCgdfc29ja2'
    'V0QgoKCF9hZGRyZXNzQgcKBV9wb3J0');

@$core.Deprecated('Use streamCustomMsgRequestDescriptor instead')
const StreamCustomMsgRequest$json = {
  '1': 'StreamCustomMsgRequest',
};

/// Descriptor for `StreamCustomMsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamCustomMsgRequestDescriptor = $convert.base64Decode(
    'ChZTdHJlYW1DdXN0b21Nc2dSZXF1ZXN0');

@$core.Deprecated('Use customMsgNotificationDescriptor instead')
const CustomMsgNotification$json = {
  '1': 'CustomMsgNotification',
  '2': [
    {'1': 'peer_id', '3': 1, '4': 1, '5': 12, '10': 'peerId'},
    {'1': 'payload', '3': 2, '4': 1, '5': 12, '10': 'payload'},
  ],
};

/// Descriptor for `CustomMsgNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customMsgNotificationDescriptor = $convert.base64Decode(
    'ChVDdXN0b21Nc2dOb3RpZmljYXRpb24SFwoHcGVlcl9pZBgBIAEoDFIGcGVlcklkEhgKB3BheW'
    'xvYWQYAiABKAxSB3BheWxvYWQ=');

