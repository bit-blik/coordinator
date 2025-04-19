//
//  Generated code. Do not modify.
//  source: lnd/node.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Getinfo.address[].type
class GetinfoAddress_GetinfoAddressType extends $pb.ProtobufEnum {
  static const GetinfoAddress_GetinfoAddressType DNS = GetinfoAddress_GetinfoAddressType._(0, _omitEnumNames ? '' : 'DNS');
  static const GetinfoAddress_GetinfoAddressType IPV4 = GetinfoAddress_GetinfoAddressType._(1, _omitEnumNames ? '' : 'IPV4');
  static const GetinfoAddress_GetinfoAddressType IPV6 = GetinfoAddress_GetinfoAddressType._(2, _omitEnumNames ? '' : 'IPV6');
  static const GetinfoAddress_GetinfoAddressType TORV2 = GetinfoAddress_GetinfoAddressType._(3, _omitEnumNames ? '' : 'TORV2');
  static const GetinfoAddress_GetinfoAddressType TORV3 = GetinfoAddress_GetinfoAddressType._(4, _omitEnumNames ? '' : 'TORV3');

  static const $core.List<GetinfoAddress_GetinfoAddressType> values = <GetinfoAddress_GetinfoAddressType> [
    DNS,
    IPV4,
    IPV6,
    TORV2,
    TORV3,
  ];

  static final $core.Map<$core.int, GetinfoAddress_GetinfoAddressType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetinfoAddress_GetinfoAddressType? valueOf($core.int value) => _byValue[value];

  const GetinfoAddress_GetinfoAddressType._(super.v, super.n);
}

/// Getinfo.binding[].type
class GetinfoBinding_GetinfoBindingType extends $pb.ProtobufEnum {
  static const GetinfoBinding_GetinfoBindingType LOCAL_SOCKET = GetinfoBinding_GetinfoBindingType._(0, _omitEnumNames ? '' : 'LOCAL_SOCKET');
  static const GetinfoBinding_GetinfoBindingType IPV4 = GetinfoBinding_GetinfoBindingType._(1, _omitEnumNames ? '' : 'IPV4');
  static const GetinfoBinding_GetinfoBindingType IPV6 = GetinfoBinding_GetinfoBindingType._(2, _omitEnumNames ? '' : 'IPV6');
  static const GetinfoBinding_GetinfoBindingType TORV2 = GetinfoBinding_GetinfoBindingType._(3, _omitEnumNames ? '' : 'TORV2');
  static const GetinfoBinding_GetinfoBindingType TORV3 = GetinfoBinding_GetinfoBindingType._(4, _omitEnumNames ? '' : 'TORV3');
  static const GetinfoBinding_GetinfoBindingType WEBSOCKET = GetinfoBinding_GetinfoBindingType._(5, _omitEnumNames ? '' : 'WEBSOCKET');

  static const $core.List<GetinfoBinding_GetinfoBindingType> values = <GetinfoBinding_GetinfoBindingType> [
    LOCAL_SOCKET,
    IPV4,
    IPV6,
    TORV2,
    TORV3,
    WEBSOCKET,
  ];

  static final $core.Map<$core.int, GetinfoBinding_GetinfoBindingType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetinfoBinding_GetinfoBindingType? valueOf($core.int value) => _byValue[value];

  const GetinfoBinding_GetinfoBindingType._(super.v, super.n);
}

/// ListPeers.level
class ListpeersRequest_ListpeersLevel extends $pb.ProtobufEnum {
  static const ListpeersRequest_ListpeersLevel IO = ListpeersRequest_ListpeersLevel._(0, _omitEnumNames ? '' : 'IO');
  static const ListpeersRequest_ListpeersLevel DEBUG = ListpeersRequest_ListpeersLevel._(1, _omitEnumNames ? '' : 'DEBUG');
  static const ListpeersRequest_ListpeersLevel INFO = ListpeersRequest_ListpeersLevel._(2, _omitEnumNames ? '' : 'INFO');
  static const ListpeersRequest_ListpeersLevel UNUSUAL = ListpeersRequest_ListpeersLevel._(3, _omitEnumNames ? '' : 'UNUSUAL');
  static const ListpeersRequest_ListpeersLevel TRACE = ListpeersRequest_ListpeersLevel._(4, _omitEnumNames ? '' : 'TRACE');

  static const $core.List<ListpeersRequest_ListpeersLevel> values = <ListpeersRequest_ListpeersLevel> [
    IO,
    DEBUG,
    INFO,
    UNUSUAL,
    TRACE,
  ];

  static final $core.Map<$core.int, ListpeersRequest_ListpeersLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListpeersRequest_ListpeersLevel? valueOf($core.int value) => _byValue[value];

  const ListpeersRequest_ListpeersLevel._(super.v, super.n);
}

/// ListPeers.peers[].log[].type
class ListpeersPeersLog_ListpeersPeersLogType extends $pb.ProtobufEnum {
  static const ListpeersPeersLog_ListpeersPeersLogType SKIPPED = ListpeersPeersLog_ListpeersPeersLogType._(0, _omitEnumNames ? '' : 'SKIPPED');
  static const ListpeersPeersLog_ListpeersPeersLogType BROKEN = ListpeersPeersLog_ListpeersPeersLogType._(1, _omitEnumNames ? '' : 'BROKEN');
  static const ListpeersPeersLog_ListpeersPeersLogType UNUSUAL = ListpeersPeersLog_ListpeersPeersLogType._(2, _omitEnumNames ? '' : 'UNUSUAL');
  static const ListpeersPeersLog_ListpeersPeersLogType INFO = ListpeersPeersLog_ListpeersPeersLogType._(3, _omitEnumNames ? '' : 'INFO');
  static const ListpeersPeersLog_ListpeersPeersLogType DEBUG = ListpeersPeersLog_ListpeersPeersLogType._(4, _omitEnumNames ? '' : 'DEBUG');
  static const ListpeersPeersLog_ListpeersPeersLogType IO_IN = ListpeersPeersLog_ListpeersPeersLogType._(5, _omitEnumNames ? '' : 'IO_IN');
  static const ListpeersPeersLog_ListpeersPeersLogType IO_OUT = ListpeersPeersLog_ListpeersPeersLogType._(6, _omitEnumNames ? '' : 'IO_OUT');
  static const ListpeersPeersLog_ListpeersPeersLogType TRACE = ListpeersPeersLog_ListpeersPeersLogType._(7, _omitEnumNames ? '' : 'TRACE');

  static const $core.List<ListpeersPeersLog_ListpeersPeersLogType> values = <ListpeersPeersLog_ListpeersPeersLogType> [
    SKIPPED,
    BROKEN,
    UNUSUAL,
    INFO,
    DEBUG,
    IO_IN,
    IO_OUT,
    TRACE,
  ];

  static final $core.Map<$core.int, ListpeersPeersLog_ListpeersPeersLogType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListpeersPeersLog_ListpeersPeersLogType? valueOf($core.int value) => _byValue[value];

  const ListpeersPeersLog_ListpeersPeersLogType._(super.v, super.n);
}

/// ListFunds.outputs[].status
class ListfundsOutputs_ListfundsOutputsStatus extends $pb.ProtobufEnum {
  static const ListfundsOutputs_ListfundsOutputsStatus UNCONFIRMED = ListfundsOutputs_ListfundsOutputsStatus._(0, _omitEnumNames ? '' : 'UNCONFIRMED');
  static const ListfundsOutputs_ListfundsOutputsStatus CONFIRMED = ListfundsOutputs_ListfundsOutputsStatus._(1, _omitEnumNames ? '' : 'CONFIRMED');
  static const ListfundsOutputs_ListfundsOutputsStatus SPENT = ListfundsOutputs_ListfundsOutputsStatus._(2, _omitEnumNames ? '' : 'SPENT');
  static const ListfundsOutputs_ListfundsOutputsStatus IMMATURE = ListfundsOutputs_ListfundsOutputsStatus._(3, _omitEnumNames ? '' : 'IMMATURE');

  static const $core.List<ListfundsOutputs_ListfundsOutputsStatus> values = <ListfundsOutputs_ListfundsOutputsStatus> [
    UNCONFIRMED,
    CONFIRMED,
    SPENT,
    IMMATURE,
  ];

  static final $core.Map<$core.int, ListfundsOutputs_ListfundsOutputsStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListfundsOutputs_ListfundsOutputsStatus? valueOf($core.int value) => _byValue[value];

  const ListfundsOutputs_ListfundsOutputsStatus._(super.v, super.n);
}

/// SendPay.status
class SendpayResponse_SendpayStatus extends $pb.ProtobufEnum {
  static const SendpayResponse_SendpayStatus PENDING = SendpayResponse_SendpayStatus._(0, _omitEnumNames ? '' : 'PENDING');
  static const SendpayResponse_SendpayStatus COMPLETE = SendpayResponse_SendpayStatus._(1, _omitEnumNames ? '' : 'COMPLETE');

  static const $core.List<SendpayResponse_SendpayStatus> values = <SendpayResponse_SendpayStatus> [
    PENDING,
    COMPLETE,
  ];

  static final $core.Map<$core.int, SendpayResponse_SendpayStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SendpayResponse_SendpayStatus? valueOf($core.int value) => _byValue[value];

  const SendpayResponse_SendpayStatus._(super.v, super.n);
}

/// Close.type
class CloseResponse_CloseType extends $pb.ProtobufEnum {
  static const CloseResponse_CloseType MUTUAL = CloseResponse_CloseType._(0, _omitEnumNames ? '' : 'MUTUAL');
  static const CloseResponse_CloseType UNILATERAL = CloseResponse_CloseType._(1, _omitEnumNames ? '' : 'UNILATERAL');
  static const CloseResponse_CloseType UNOPENED = CloseResponse_CloseType._(2, _omitEnumNames ? '' : 'UNOPENED');

  static const $core.List<CloseResponse_CloseType> values = <CloseResponse_CloseType> [
    MUTUAL,
    UNILATERAL,
    UNOPENED,
  ];

  static final $core.Map<$core.int, CloseResponse_CloseType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CloseResponse_CloseType? valueOf($core.int value) => _byValue[value];

  const CloseResponse_CloseType._(super.v, super.n);
}

/// Connect.direction
class ConnectResponse_ConnectDirection extends $pb.ProtobufEnum {
  static const ConnectResponse_ConnectDirection IN = ConnectResponse_ConnectDirection._(0, _omitEnumNames ? '' : 'IN');
  static const ConnectResponse_ConnectDirection OUT = ConnectResponse_ConnectDirection._(1, _omitEnumNames ? '' : 'OUT');

  static const $core.List<ConnectResponse_ConnectDirection> values = <ConnectResponse_ConnectDirection> [
    IN,
    OUT,
  ];

  static final $core.Map<$core.int, ConnectResponse_ConnectDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConnectResponse_ConnectDirection? valueOf($core.int value) => _byValue[value];

  const ConnectResponse_ConnectDirection._(super.v, super.n);
}

/// Connect.address.type
class ConnectAddress_ConnectAddressType extends $pb.ProtobufEnum {
  static const ConnectAddress_ConnectAddressType LOCAL_SOCKET = ConnectAddress_ConnectAddressType._(0, _omitEnumNames ? '' : 'LOCAL_SOCKET');
  static const ConnectAddress_ConnectAddressType IPV4 = ConnectAddress_ConnectAddressType._(1, _omitEnumNames ? '' : 'IPV4');
  static const ConnectAddress_ConnectAddressType IPV6 = ConnectAddress_ConnectAddressType._(2, _omitEnumNames ? '' : 'IPV6');
  static const ConnectAddress_ConnectAddressType TORV2 = ConnectAddress_ConnectAddressType._(3, _omitEnumNames ? '' : 'TORV2');
  static const ConnectAddress_ConnectAddressType TORV3 = ConnectAddress_ConnectAddressType._(4, _omitEnumNames ? '' : 'TORV3');

  static const $core.List<ConnectAddress_ConnectAddressType> values = <ConnectAddress_ConnectAddressType> [
    LOCAL_SOCKET,
    IPV4,
    IPV6,
    TORV2,
    TORV3,
  ];

  static final $core.Map<$core.int, ConnectAddress_ConnectAddressType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConnectAddress_ConnectAddressType? valueOf($core.int value) => _byValue[value];

  const ConnectAddress_ConnectAddressType._(super.v, super.n);
}

/// CreateInvoice.status
class CreateinvoiceResponse_CreateinvoiceStatus extends $pb.ProtobufEnum {
  static const CreateinvoiceResponse_CreateinvoiceStatus PAID = CreateinvoiceResponse_CreateinvoiceStatus._(0, _omitEnumNames ? '' : 'PAID');
  static const CreateinvoiceResponse_CreateinvoiceStatus EXPIRED = CreateinvoiceResponse_CreateinvoiceStatus._(1, _omitEnumNames ? '' : 'EXPIRED');
  static const CreateinvoiceResponse_CreateinvoiceStatus UNPAID = CreateinvoiceResponse_CreateinvoiceStatus._(2, _omitEnumNames ? '' : 'UNPAID');

  static const $core.List<CreateinvoiceResponse_CreateinvoiceStatus> values = <CreateinvoiceResponse_CreateinvoiceStatus> [
    PAID,
    EXPIRED,
    UNPAID,
  ];

  static final $core.Map<$core.int, CreateinvoiceResponse_CreateinvoiceStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CreateinvoiceResponse_CreateinvoiceStatus? valueOf($core.int value) => _byValue[value];

  const CreateinvoiceResponse_CreateinvoiceStatus._(super.v, super.n);
}

/// Datastore.mode
class DatastoreRequest_DatastoreMode extends $pb.ProtobufEnum {
  static const DatastoreRequest_DatastoreMode MUST_CREATE = DatastoreRequest_DatastoreMode._(0, _omitEnumNames ? '' : 'MUST_CREATE');
  static const DatastoreRequest_DatastoreMode MUST_REPLACE = DatastoreRequest_DatastoreMode._(1, _omitEnumNames ? '' : 'MUST_REPLACE');
  static const DatastoreRequest_DatastoreMode CREATE_OR_REPLACE = DatastoreRequest_DatastoreMode._(2, _omitEnumNames ? '' : 'CREATE_OR_REPLACE');
  static const DatastoreRequest_DatastoreMode MUST_APPEND = DatastoreRequest_DatastoreMode._(3, _omitEnumNames ? '' : 'MUST_APPEND');
  static const DatastoreRequest_DatastoreMode CREATE_OR_APPEND = DatastoreRequest_DatastoreMode._(4, _omitEnumNames ? '' : 'CREATE_OR_APPEND');

  static const $core.List<DatastoreRequest_DatastoreMode> values = <DatastoreRequest_DatastoreMode> [
    MUST_CREATE,
    MUST_REPLACE,
    CREATE_OR_REPLACE,
    MUST_APPEND,
    CREATE_OR_APPEND,
  ];

  static final $core.Map<$core.int, DatastoreRequest_DatastoreMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DatastoreRequest_DatastoreMode? valueOf($core.int value) => _byValue[value];

  const DatastoreRequest_DatastoreMode._(super.v, super.n);
}

/// DelInvoice.status
class DelinvoiceRequest_DelinvoiceStatus extends $pb.ProtobufEnum {
  static const DelinvoiceRequest_DelinvoiceStatus PAID = DelinvoiceRequest_DelinvoiceStatus._(0, _omitEnumNames ? '' : 'PAID');
  static const DelinvoiceRequest_DelinvoiceStatus EXPIRED = DelinvoiceRequest_DelinvoiceStatus._(1, _omitEnumNames ? '' : 'EXPIRED');
  static const DelinvoiceRequest_DelinvoiceStatus UNPAID = DelinvoiceRequest_DelinvoiceStatus._(2, _omitEnumNames ? '' : 'UNPAID');

  static const $core.List<DelinvoiceRequest_DelinvoiceStatus> values = <DelinvoiceRequest_DelinvoiceStatus> [
    PAID,
    EXPIRED,
    UNPAID,
  ];

  static final $core.Map<$core.int, DelinvoiceRequest_DelinvoiceStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DelinvoiceRequest_DelinvoiceStatus? valueOf($core.int value) => _byValue[value];

  const DelinvoiceRequest_DelinvoiceStatus._(super.v, super.n);
}

/// DelInvoice.status
class DelinvoiceResponse_DelinvoiceStatus extends $pb.ProtobufEnum {
  static const DelinvoiceResponse_DelinvoiceStatus PAID = DelinvoiceResponse_DelinvoiceStatus._(0, _omitEnumNames ? '' : 'PAID');
  static const DelinvoiceResponse_DelinvoiceStatus EXPIRED = DelinvoiceResponse_DelinvoiceStatus._(1, _omitEnumNames ? '' : 'EXPIRED');
  static const DelinvoiceResponse_DelinvoiceStatus UNPAID = DelinvoiceResponse_DelinvoiceStatus._(2, _omitEnumNames ? '' : 'UNPAID');

  static const $core.List<DelinvoiceResponse_DelinvoiceStatus> values = <DelinvoiceResponse_DelinvoiceStatus> [
    PAID,
    EXPIRED,
    UNPAID,
  ];

  static final $core.Map<$core.int, DelinvoiceResponse_DelinvoiceStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DelinvoiceResponse_DelinvoiceStatus? valueOf($core.int value) => _byValue[value];

  const DelinvoiceResponse_DelinvoiceStatus._(super.v, super.n);
}

/// Recover.result
class RecoverResponse_RecoverResult extends $pb.ProtobufEnum {
  static const RecoverResponse_RecoverResult RECOVERY_RESTART_IN_PROGRESS = RecoverResponse_RecoverResult._(0, _omitEnumNames ? '' : 'RECOVERY_RESTART_IN_PROGRESS');

  static const $core.List<RecoverResponse_RecoverResult> values = <RecoverResponse_RecoverResult> [
    RECOVERY_RESTART_IN_PROGRESS,
  ];

  static final $core.Map<$core.int, RecoverResponse_RecoverResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecoverResponse_RecoverResult? valueOf($core.int value) => _byValue[value];

  const RecoverResponse_RecoverResult._(super.v, super.n);
}

/// ListInvoices.index
class ListinvoicesRequest_ListinvoicesIndex extends $pb.ProtobufEnum {
  static const ListinvoicesRequest_ListinvoicesIndex CREATED = ListinvoicesRequest_ListinvoicesIndex._(0, _omitEnumNames ? '' : 'CREATED');
  static const ListinvoicesRequest_ListinvoicesIndex UPDATED = ListinvoicesRequest_ListinvoicesIndex._(1, _omitEnumNames ? '' : 'UPDATED');

  static const $core.List<ListinvoicesRequest_ListinvoicesIndex> values = <ListinvoicesRequest_ListinvoicesIndex> [
    CREATED,
    UPDATED,
  ];

  static final $core.Map<$core.int, ListinvoicesRequest_ListinvoicesIndex> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListinvoicesRequest_ListinvoicesIndex? valueOf($core.int value) => _byValue[value];

  const ListinvoicesRequest_ListinvoicesIndex._(super.v, super.n);
}

/// ListInvoices.invoices[].status
class ListinvoicesInvoices_ListinvoicesInvoicesStatus extends $pb.ProtobufEnum {
  static const ListinvoicesInvoices_ListinvoicesInvoicesStatus UNPAID = ListinvoicesInvoices_ListinvoicesInvoicesStatus._(0, _omitEnumNames ? '' : 'UNPAID');
  static const ListinvoicesInvoices_ListinvoicesInvoicesStatus PAID = ListinvoicesInvoices_ListinvoicesInvoicesStatus._(1, _omitEnumNames ? '' : 'PAID');
  static const ListinvoicesInvoices_ListinvoicesInvoicesStatus EXPIRED = ListinvoicesInvoices_ListinvoicesInvoicesStatus._(2, _omitEnumNames ? '' : 'EXPIRED');

  static const $core.List<ListinvoicesInvoices_ListinvoicesInvoicesStatus> values = <ListinvoicesInvoices_ListinvoicesInvoicesStatus> [
    UNPAID,
    PAID,
    EXPIRED,
  ];

  static final $core.Map<$core.int, ListinvoicesInvoices_ListinvoicesInvoicesStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListinvoicesInvoices_ListinvoicesInvoicesStatus? valueOf($core.int value) => _byValue[value];

  const ListinvoicesInvoices_ListinvoicesInvoicesStatus._(super.v, super.n);
}

/// SendOnion.status
class SendonionResponse_SendonionStatus extends $pb.ProtobufEnum {
  static const SendonionResponse_SendonionStatus PENDING = SendonionResponse_SendonionStatus._(0, _omitEnumNames ? '' : 'PENDING');
  static const SendonionResponse_SendonionStatus COMPLETE = SendonionResponse_SendonionStatus._(1, _omitEnumNames ? '' : 'COMPLETE');

  static const $core.List<SendonionResponse_SendonionStatus> values = <SendonionResponse_SendonionStatus> [
    PENDING,
    COMPLETE,
  ];

  static final $core.Map<$core.int, SendonionResponse_SendonionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SendonionResponse_SendonionStatus? valueOf($core.int value) => _byValue[value];

  const SendonionResponse_SendonionStatus._(super.v, super.n);
}

/// ListSendPays.status
class ListsendpaysRequest_ListsendpaysStatus extends $pb.ProtobufEnum {
  static const ListsendpaysRequest_ListsendpaysStatus PENDING = ListsendpaysRequest_ListsendpaysStatus._(0, _omitEnumNames ? '' : 'PENDING');
  static const ListsendpaysRequest_ListsendpaysStatus COMPLETE = ListsendpaysRequest_ListsendpaysStatus._(1, _omitEnumNames ? '' : 'COMPLETE');
  static const ListsendpaysRequest_ListsendpaysStatus FAILED = ListsendpaysRequest_ListsendpaysStatus._(2, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<ListsendpaysRequest_ListsendpaysStatus> values = <ListsendpaysRequest_ListsendpaysStatus> [
    PENDING,
    COMPLETE,
    FAILED,
  ];

  static final $core.Map<$core.int, ListsendpaysRequest_ListsendpaysStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListsendpaysRequest_ListsendpaysStatus? valueOf($core.int value) => _byValue[value];

  const ListsendpaysRequest_ListsendpaysStatus._(super.v, super.n);
}

/// ListSendPays.index
class ListsendpaysRequest_ListsendpaysIndex extends $pb.ProtobufEnum {
  static const ListsendpaysRequest_ListsendpaysIndex CREATED = ListsendpaysRequest_ListsendpaysIndex._(0, _omitEnumNames ? '' : 'CREATED');
  static const ListsendpaysRequest_ListsendpaysIndex UPDATED = ListsendpaysRequest_ListsendpaysIndex._(1, _omitEnumNames ? '' : 'UPDATED');

  static const $core.List<ListsendpaysRequest_ListsendpaysIndex> values = <ListsendpaysRequest_ListsendpaysIndex> [
    CREATED,
    UPDATED,
  ];

  static final $core.Map<$core.int, ListsendpaysRequest_ListsendpaysIndex> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListsendpaysRequest_ListsendpaysIndex? valueOf($core.int value) => _byValue[value];

  const ListsendpaysRequest_ListsendpaysIndex._(super.v, super.n);
}

/// ListSendPays.payments[].status
class ListsendpaysPayments_ListsendpaysPaymentsStatus extends $pb.ProtobufEnum {
  static const ListsendpaysPayments_ListsendpaysPaymentsStatus PENDING = ListsendpaysPayments_ListsendpaysPaymentsStatus._(0, _omitEnumNames ? '' : 'PENDING');
  static const ListsendpaysPayments_ListsendpaysPaymentsStatus FAILED = ListsendpaysPayments_ListsendpaysPaymentsStatus._(1, _omitEnumNames ? '' : 'FAILED');
  static const ListsendpaysPayments_ListsendpaysPaymentsStatus COMPLETE = ListsendpaysPayments_ListsendpaysPaymentsStatus._(2, _omitEnumNames ? '' : 'COMPLETE');

  static const $core.List<ListsendpaysPayments_ListsendpaysPaymentsStatus> values = <ListsendpaysPayments_ListsendpaysPaymentsStatus> [
    PENDING,
    FAILED,
    COMPLETE,
  ];

  static final $core.Map<$core.int, ListsendpaysPayments_ListsendpaysPaymentsStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListsendpaysPayments_ListsendpaysPaymentsStatus? valueOf($core.int value) => _byValue[value];

  const ListsendpaysPayments_ListsendpaysPaymentsStatus._(super.v, super.n);
}

/// Pay.status
class PayResponse_PayStatus extends $pb.ProtobufEnum {
  static const PayResponse_PayStatus COMPLETE = PayResponse_PayStatus._(0, _omitEnumNames ? '' : 'COMPLETE');
  static const PayResponse_PayStatus PENDING = PayResponse_PayStatus._(1, _omitEnumNames ? '' : 'PENDING');
  static const PayResponse_PayStatus FAILED = PayResponse_PayStatus._(2, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<PayResponse_PayStatus> values = <PayResponse_PayStatus> [
    COMPLETE,
    PENDING,
    FAILED,
  ];

  static final $core.Map<$core.int, PayResponse_PayStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PayResponse_PayStatus? valueOf($core.int value) => _byValue[value];

  const PayResponse_PayStatus._(super.v, super.n);
}

/// ListNodes.nodes[].addresses[].type
class ListnodesNodesAddresses_ListnodesNodesAddressesType extends $pb.ProtobufEnum {
  static const ListnodesNodesAddresses_ListnodesNodesAddressesType DNS = ListnodesNodesAddresses_ListnodesNodesAddressesType._(0, _omitEnumNames ? '' : 'DNS');
  static const ListnodesNodesAddresses_ListnodesNodesAddressesType IPV4 = ListnodesNodesAddresses_ListnodesNodesAddressesType._(1, _omitEnumNames ? '' : 'IPV4');
  static const ListnodesNodesAddresses_ListnodesNodesAddressesType IPV6 = ListnodesNodesAddresses_ListnodesNodesAddressesType._(2, _omitEnumNames ? '' : 'IPV6');
  static const ListnodesNodesAddresses_ListnodesNodesAddressesType TORV2 = ListnodesNodesAddresses_ListnodesNodesAddressesType._(3, _omitEnumNames ? '' : 'TORV2');
  static const ListnodesNodesAddresses_ListnodesNodesAddressesType TORV3 = ListnodesNodesAddresses_ListnodesNodesAddressesType._(4, _omitEnumNames ? '' : 'TORV3');

  static const $core.List<ListnodesNodesAddresses_ListnodesNodesAddressesType> values = <ListnodesNodesAddresses_ListnodesNodesAddressesType> [
    DNS,
    IPV4,
    IPV6,
    TORV2,
    TORV3,
  ];

  static final $core.Map<$core.int, ListnodesNodesAddresses_ListnodesNodesAddressesType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListnodesNodesAddresses_ListnodesNodesAddressesType? valueOf($core.int value) => _byValue[value];

  const ListnodesNodesAddresses_ListnodesNodesAddressesType._(super.v, super.n);
}

/// WaitAnyInvoice.status
class WaitanyinvoiceResponse_WaitanyinvoiceStatus extends $pb.ProtobufEnum {
  static const WaitanyinvoiceResponse_WaitanyinvoiceStatus PAID = WaitanyinvoiceResponse_WaitanyinvoiceStatus._(0, _omitEnumNames ? '' : 'PAID');
  static const WaitanyinvoiceResponse_WaitanyinvoiceStatus EXPIRED = WaitanyinvoiceResponse_WaitanyinvoiceStatus._(1, _omitEnumNames ? '' : 'EXPIRED');

  static const $core.List<WaitanyinvoiceResponse_WaitanyinvoiceStatus> values = <WaitanyinvoiceResponse_WaitanyinvoiceStatus> [
    PAID,
    EXPIRED,
  ];

  static final $core.Map<$core.int, WaitanyinvoiceResponse_WaitanyinvoiceStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WaitanyinvoiceResponse_WaitanyinvoiceStatus? valueOf($core.int value) => _byValue[value];

  const WaitanyinvoiceResponse_WaitanyinvoiceStatus._(super.v, super.n);
}

/// WaitInvoice.status
class WaitinvoiceResponse_WaitinvoiceStatus extends $pb.ProtobufEnum {
  static const WaitinvoiceResponse_WaitinvoiceStatus PAID = WaitinvoiceResponse_WaitinvoiceStatus._(0, _omitEnumNames ? '' : 'PAID');
  static const WaitinvoiceResponse_WaitinvoiceStatus EXPIRED = WaitinvoiceResponse_WaitinvoiceStatus._(1, _omitEnumNames ? '' : 'EXPIRED');

  static const $core.List<WaitinvoiceResponse_WaitinvoiceStatus> values = <WaitinvoiceResponse_WaitinvoiceStatus> [
    PAID,
    EXPIRED,
  ];

  static final $core.Map<$core.int, WaitinvoiceResponse_WaitinvoiceStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WaitinvoiceResponse_WaitinvoiceStatus? valueOf($core.int value) => _byValue[value];

  const WaitinvoiceResponse_WaitinvoiceStatus._(super.v, super.n);
}

/// WaitSendPay.status
class WaitsendpayResponse_WaitsendpayStatus extends $pb.ProtobufEnum {
  static const WaitsendpayResponse_WaitsendpayStatus COMPLETE = WaitsendpayResponse_WaitsendpayStatus._(0, _omitEnumNames ? '' : 'COMPLETE');

  static const $core.List<WaitsendpayResponse_WaitsendpayStatus> values = <WaitsendpayResponse_WaitsendpayStatus> [
    COMPLETE,
  ];

  static final $core.Map<$core.int, WaitsendpayResponse_WaitsendpayStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WaitsendpayResponse_WaitsendpayStatus? valueOf($core.int value) => _byValue[value];

  const WaitsendpayResponse_WaitsendpayStatus._(super.v, super.n);
}

/// NewAddr.addresstype
class NewaddrRequest_NewaddrAddresstype extends $pb.ProtobufEnum {
  static const NewaddrRequest_NewaddrAddresstype BECH32 = NewaddrRequest_NewaddrAddresstype._(0, _omitEnumNames ? '' : 'BECH32');
  static const NewaddrRequest_NewaddrAddresstype ALL = NewaddrRequest_NewaddrAddresstype._(2, _omitEnumNames ? '' : 'ALL');
  static const NewaddrRequest_NewaddrAddresstype P2TR = NewaddrRequest_NewaddrAddresstype._(3, _omitEnumNames ? '' : 'P2TR');

  static const $core.List<NewaddrRequest_NewaddrAddresstype> values = <NewaddrRequest_NewaddrAddresstype> [
    BECH32,
    ALL,
    P2TR,
  ];

  static final $core.Map<$core.int, NewaddrRequest_NewaddrAddresstype> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NewaddrRequest_NewaddrAddresstype? valueOf($core.int value) => _byValue[value];

  const NewaddrRequest_NewaddrAddresstype._(super.v, super.n);
}

/// KeySend.status
class KeysendResponse_KeysendStatus extends $pb.ProtobufEnum {
  static const KeysendResponse_KeysendStatus COMPLETE = KeysendResponse_KeysendStatus._(0, _omitEnumNames ? '' : 'COMPLETE');

  static const $core.List<KeysendResponse_KeysendStatus> values = <KeysendResponse_KeysendStatus> [
    COMPLETE,
  ];

  static final $core.Map<$core.int, KeysendResponse_KeysendStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static KeysendResponse_KeysendStatus? valueOf($core.int value) => _byValue[value];

  const KeysendResponse_KeysendStatus._(super.v, super.n);
}

/// ListPeerChannels.channels[].state
class ListpeerchannelsChannels_ListpeerchannelsChannelsState extends $pb.ProtobufEnum {
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState OPENINGD = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(0, _omitEnumNames ? '' : 'OPENINGD');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState CHANNELD_AWAITING_LOCKIN = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(1, _omitEnumNames ? '' : 'CHANNELD_AWAITING_LOCKIN');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState CHANNELD_NORMAL = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(2, _omitEnumNames ? '' : 'CHANNELD_NORMAL');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState CHANNELD_SHUTTING_DOWN = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(3, _omitEnumNames ? '' : 'CHANNELD_SHUTTING_DOWN');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState CLOSINGD_SIGEXCHANGE = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(4, _omitEnumNames ? '' : 'CLOSINGD_SIGEXCHANGE');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState CLOSINGD_COMPLETE = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(5, _omitEnumNames ? '' : 'CLOSINGD_COMPLETE');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState AWAITING_UNILATERAL = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(6, _omitEnumNames ? '' : 'AWAITING_UNILATERAL');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState FUNDING_SPEND_SEEN = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(7, _omitEnumNames ? '' : 'FUNDING_SPEND_SEEN');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState ONCHAIN = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(8, _omitEnumNames ? '' : 'ONCHAIN');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState DUALOPEND_OPEN_INIT = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(9, _omitEnumNames ? '' : 'DUALOPEND_OPEN_INIT');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState DUALOPEND_AWAITING_LOCKIN = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(10, _omitEnumNames ? '' : 'DUALOPEND_AWAITING_LOCKIN');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState CHANNELD_AWAITING_SPLICE = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(11, _omitEnumNames ? '' : 'CHANNELD_AWAITING_SPLICE');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState DUALOPEND_OPEN_COMMITTED = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(12, _omitEnumNames ? '' : 'DUALOPEND_OPEN_COMMITTED');
  static const ListpeerchannelsChannels_ListpeerchannelsChannelsState DUALOPEND_OPEN_COMMIT_READY = ListpeerchannelsChannels_ListpeerchannelsChannelsState._(13, _omitEnumNames ? '' : 'DUALOPEND_OPEN_COMMIT_READY');

  static const $core.List<ListpeerchannelsChannels_ListpeerchannelsChannelsState> values = <ListpeerchannelsChannels_ListpeerchannelsChannelsState> [
    OPENINGD,
    CHANNELD_AWAITING_LOCKIN,
    CHANNELD_NORMAL,
    CHANNELD_SHUTTING_DOWN,
    CLOSINGD_SIGEXCHANGE,
    CLOSINGD_COMPLETE,
    AWAITING_UNILATERAL,
    FUNDING_SPEND_SEEN,
    ONCHAIN,
    DUALOPEND_OPEN_INIT,
    DUALOPEND_AWAITING_LOCKIN,
    CHANNELD_AWAITING_SPLICE,
    DUALOPEND_OPEN_COMMITTED,
    DUALOPEND_OPEN_COMMIT_READY,
  ];

  static final $core.Map<$core.int, ListpeerchannelsChannels_ListpeerchannelsChannelsState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListpeerchannelsChannels_ListpeerchannelsChannelsState? valueOf($core.int value) => _byValue[value];

  const ListpeerchannelsChannels_ListpeerchannelsChannelsState._(super.v, super.n);
}

/// ListPeerChannels.channels[].htlcs[].direction
class ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection extends $pb.ProtobufEnum {
  static const ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection IN = ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection._(0, _omitEnumNames ? '' : 'IN');
  static const ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection OUT = ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection._(1, _omitEnumNames ? '' : 'OUT');

  static const $core.List<ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection> values = <ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection> [
    IN,
    OUT,
  ];

  static final $core.Map<$core.int, ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection? valueOf($core.int value) => _byValue[value];

  const ListpeerchannelsChannelsHtlcs_ListpeerchannelsChannelsHtlcsDirection._(super.v, super.n);
}

/// ListClosedChannels.closedchannels[].close_cause
class ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause extends $pb.ProtobufEnum {
  static const ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause UNKNOWN = ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause LOCAL = ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause._(1, _omitEnumNames ? '' : 'LOCAL');
  static const ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause USER = ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause._(2, _omitEnumNames ? '' : 'USER');
  static const ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause REMOTE = ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause._(3, _omitEnumNames ? '' : 'REMOTE');
  static const ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause PROTOCOL = ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause._(4, _omitEnumNames ? '' : 'PROTOCOL');
  static const ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause ONCHAIN = ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause._(5, _omitEnumNames ? '' : 'ONCHAIN');

  static const $core.List<ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause> values = <ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause> [
    UNKNOWN,
    LOCAL,
    USER,
    REMOTE,
    PROTOCOL,
    ONCHAIN,
  ];

  static final $core.Map<$core.int, ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause? valueOf($core.int value) => _byValue[value];

  const ListclosedchannelsClosedchannels_ListclosedchannelsClosedchannelsClose_cause._(super.v, super.n);
}

/// DecodePay.fallbacks[].type
class DecodepayFallbacks_DecodepayFallbacksType extends $pb.ProtobufEnum {
  static const DecodepayFallbacks_DecodepayFallbacksType P2PKH = DecodepayFallbacks_DecodepayFallbacksType._(0, _omitEnumNames ? '' : 'P2PKH');
  static const DecodepayFallbacks_DecodepayFallbacksType P2SH = DecodepayFallbacks_DecodepayFallbacksType._(1, _omitEnumNames ? '' : 'P2SH');
  static const DecodepayFallbacks_DecodepayFallbacksType P2WPKH = DecodepayFallbacks_DecodepayFallbacksType._(2, _omitEnumNames ? '' : 'P2WPKH');
  static const DecodepayFallbacks_DecodepayFallbacksType P2WSH = DecodepayFallbacks_DecodepayFallbacksType._(3, _omitEnumNames ? '' : 'P2WSH');
  static const DecodepayFallbacks_DecodepayFallbacksType P2TR = DecodepayFallbacks_DecodepayFallbacksType._(4, _omitEnumNames ? '' : 'P2TR');

  static const $core.List<DecodepayFallbacks_DecodepayFallbacksType> values = <DecodepayFallbacks_DecodepayFallbacksType> [
    P2PKH,
    P2SH,
    P2WPKH,
    P2WSH,
    P2TR,
  ];

  static final $core.Map<$core.int, DecodepayFallbacks_DecodepayFallbacksType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DecodepayFallbacks_DecodepayFallbacksType? valueOf($core.int value) => _byValue[value];

  const DecodepayFallbacks_DecodepayFallbacksType._(super.v, super.n);
}

/// Decode.type
class DecodeResponse_DecodeType extends $pb.ProtobufEnum {
  static const DecodeResponse_DecodeType BOLT12_OFFER = DecodeResponse_DecodeType._(0, _omitEnumNames ? '' : 'BOLT12_OFFER');
  static const DecodeResponse_DecodeType BOLT12_INVOICE = DecodeResponse_DecodeType._(1, _omitEnumNames ? '' : 'BOLT12_INVOICE');
  static const DecodeResponse_DecodeType BOLT12_INVOICE_REQUEST = DecodeResponse_DecodeType._(2, _omitEnumNames ? '' : 'BOLT12_INVOICE_REQUEST');
  static const DecodeResponse_DecodeType BOLT11_INVOICE = DecodeResponse_DecodeType._(3, _omitEnumNames ? '' : 'BOLT11_INVOICE');
  static const DecodeResponse_DecodeType RUNE = DecodeResponse_DecodeType._(4, _omitEnumNames ? '' : 'RUNE');
  static const DecodeResponse_DecodeType EMERGENCY_RECOVER = DecodeResponse_DecodeType._(5, _omitEnumNames ? '' : 'EMERGENCY_RECOVER');

  static const $core.List<DecodeResponse_DecodeType> values = <DecodeResponse_DecodeType> [
    BOLT12_OFFER,
    BOLT12_INVOICE,
    BOLT12_INVOICE_REQUEST,
    BOLT11_INVOICE,
    RUNE,
    EMERGENCY_RECOVER,
  ];

  static final $core.Map<$core.int, DecodeResponse_DecodeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DecodeResponse_DecodeType? valueOf($core.int value) => _byValue[value];

  const DecodeResponse_DecodeType._(super.v, super.n);
}

/// Decode.fallbacks[].type
class DecodeFallbacks_DecodeFallbacksType extends $pb.ProtobufEnum {
  static const DecodeFallbacks_DecodeFallbacksType P2PKH = DecodeFallbacks_DecodeFallbacksType._(0, _omitEnumNames ? '' : 'P2PKH');
  static const DecodeFallbacks_DecodeFallbacksType P2SH = DecodeFallbacks_DecodeFallbacksType._(1, _omitEnumNames ? '' : 'P2SH');
  static const DecodeFallbacks_DecodeFallbacksType P2WPKH = DecodeFallbacks_DecodeFallbacksType._(2, _omitEnumNames ? '' : 'P2WPKH');
  static const DecodeFallbacks_DecodeFallbacksType P2WSH = DecodeFallbacks_DecodeFallbacksType._(3, _omitEnumNames ? '' : 'P2WSH');
  static const DecodeFallbacks_DecodeFallbacksType P2TR = DecodeFallbacks_DecodeFallbacksType._(4, _omitEnumNames ? '' : 'P2TR');

  static const $core.List<DecodeFallbacks_DecodeFallbacksType> values = <DecodeFallbacks_DecodeFallbacksType> [
    P2PKH,
    P2SH,
    P2WPKH,
    P2WSH,
    P2TR,
  ];

  static final $core.Map<$core.int, DecodeFallbacks_DecodeFallbacksType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DecodeFallbacks_DecodeFallbacksType? valueOf($core.int value) => _byValue[value];

  const DecodeFallbacks_DecodeFallbacksType._(super.v, super.n);
}

/// DelPay.status
class DelpayRequest_DelpayStatus extends $pb.ProtobufEnum {
  static const DelpayRequest_DelpayStatus COMPLETE = DelpayRequest_DelpayStatus._(0, _omitEnumNames ? '' : 'COMPLETE');
  static const DelpayRequest_DelpayStatus FAILED = DelpayRequest_DelpayStatus._(1, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<DelpayRequest_DelpayStatus> values = <DelpayRequest_DelpayStatus> [
    COMPLETE,
    FAILED,
  ];

  static final $core.Map<$core.int, DelpayRequest_DelpayStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DelpayRequest_DelpayStatus? valueOf($core.int value) => _byValue[value];

  const DelpayRequest_DelpayStatus._(super.v, super.n);
}

/// DelPay.payments[].status
class DelpayPayments_DelpayPaymentsStatus extends $pb.ProtobufEnum {
  static const DelpayPayments_DelpayPaymentsStatus PENDING = DelpayPayments_DelpayPaymentsStatus._(0, _omitEnumNames ? '' : 'PENDING');
  static const DelpayPayments_DelpayPaymentsStatus FAILED = DelpayPayments_DelpayPaymentsStatus._(1, _omitEnumNames ? '' : 'FAILED');
  static const DelpayPayments_DelpayPaymentsStatus COMPLETE = DelpayPayments_DelpayPaymentsStatus._(2, _omitEnumNames ? '' : 'COMPLETE');

  static const $core.List<DelpayPayments_DelpayPaymentsStatus> values = <DelpayPayments_DelpayPaymentsStatus> [
    PENDING,
    FAILED,
    COMPLETE,
  ];

  static final $core.Map<$core.int, DelpayPayments_DelpayPaymentsStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DelpayPayments_DelpayPaymentsStatus? valueOf($core.int value) => _byValue[value];

  const DelpayPayments_DelpayPaymentsStatus._(super.v, super.n);
}

/// DelForward.status
class DelforwardRequest_DelforwardStatus extends $pb.ProtobufEnum {
  static const DelforwardRequest_DelforwardStatus SETTLED = DelforwardRequest_DelforwardStatus._(0, _omitEnumNames ? '' : 'SETTLED');
  static const DelforwardRequest_DelforwardStatus LOCAL_FAILED = DelforwardRequest_DelforwardStatus._(1, _omitEnumNames ? '' : 'LOCAL_FAILED');
  static const DelforwardRequest_DelforwardStatus FAILED = DelforwardRequest_DelforwardStatus._(2, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<DelforwardRequest_DelforwardStatus> values = <DelforwardRequest_DelforwardStatus> [
    SETTLED,
    LOCAL_FAILED,
    FAILED,
  ];

  static final $core.Map<$core.int, DelforwardRequest_DelforwardStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DelforwardRequest_DelforwardStatus? valueOf($core.int value) => _byValue[value];

  const DelforwardRequest_DelforwardStatus._(super.v, super.n);
}

/// Feerates.style
class FeeratesRequest_FeeratesStyle extends $pb.ProtobufEnum {
  static const FeeratesRequest_FeeratesStyle PERKB = FeeratesRequest_FeeratesStyle._(0, _omitEnumNames ? '' : 'PERKB');
  static const FeeratesRequest_FeeratesStyle PERKW = FeeratesRequest_FeeratesStyle._(1, _omitEnumNames ? '' : 'PERKW');

  static const $core.List<FeeratesRequest_FeeratesStyle> values = <FeeratesRequest_FeeratesStyle> [
    PERKB,
    PERKW,
  ];

  static final $core.Map<$core.int, FeeratesRequest_FeeratesStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FeeratesRequest_FeeratesStyle? valueOf($core.int value) => _byValue[value];

  const FeeratesRequest_FeeratesStyle._(super.v, super.n);
}

/// GetLog.level
class GetlogRequest_GetlogLevel extends $pb.ProtobufEnum {
  static const GetlogRequest_GetlogLevel BROKEN = GetlogRequest_GetlogLevel._(0, _omitEnumNames ? '' : 'BROKEN');
  static const GetlogRequest_GetlogLevel UNUSUAL = GetlogRequest_GetlogLevel._(1, _omitEnumNames ? '' : 'UNUSUAL');
  static const GetlogRequest_GetlogLevel INFO = GetlogRequest_GetlogLevel._(2, _omitEnumNames ? '' : 'INFO');
  static const GetlogRequest_GetlogLevel DEBUG = GetlogRequest_GetlogLevel._(3, _omitEnumNames ? '' : 'DEBUG');
  static const GetlogRequest_GetlogLevel IO = GetlogRequest_GetlogLevel._(4, _omitEnumNames ? '' : 'IO');
  static const GetlogRequest_GetlogLevel TRACE = GetlogRequest_GetlogLevel._(5, _omitEnumNames ? '' : 'TRACE');

  static const $core.List<GetlogRequest_GetlogLevel> values = <GetlogRequest_GetlogLevel> [
    BROKEN,
    UNUSUAL,
    INFO,
    DEBUG,
    IO,
    TRACE,
  ];

  static final $core.Map<$core.int, GetlogRequest_GetlogLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetlogRequest_GetlogLevel? valueOf($core.int value) => _byValue[value];

  const GetlogRequest_GetlogLevel._(super.v, super.n);
}

/// GetLog.log[].type
class GetlogLog_GetlogLogType extends $pb.ProtobufEnum {
  static const GetlogLog_GetlogLogType SKIPPED = GetlogLog_GetlogLogType._(0, _omitEnumNames ? '' : 'SKIPPED');
  static const GetlogLog_GetlogLogType BROKEN = GetlogLog_GetlogLogType._(1, _omitEnumNames ? '' : 'BROKEN');
  static const GetlogLog_GetlogLogType UNUSUAL = GetlogLog_GetlogLogType._(2, _omitEnumNames ? '' : 'UNUSUAL');
  static const GetlogLog_GetlogLogType INFO = GetlogLog_GetlogLogType._(3, _omitEnumNames ? '' : 'INFO');
  static const GetlogLog_GetlogLogType DEBUG = GetlogLog_GetlogLogType._(4, _omitEnumNames ? '' : 'DEBUG');
  static const GetlogLog_GetlogLogType IO_IN = GetlogLog_GetlogLogType._(5, _omitEnumNames ? '' : 'IO_IN');
  static const GetlogLog_GetlogLogType IO_OUT = GetlogLog_GetlogLogType._(6, _omitEnumNames ? '' : 'IO_OUT');
  static const GetlogLog_GetlogLogType TRACE = GetlogLog_GetlogLogType._(7, _omitEnumNames ? '' : 'TRACE');

  static const $core.List<GetlogLog_GetlogLogType> values = <GetlogLog_GetlogLogType> [
    SKIPPED,
    BROKEN,
    UNUSUAL,
    INFO,
    DEBUG,
    IO_IN,
    IO_OUT,
    TRACE,
  ];

  static final $core.Map<$core.int, GetlogLog_GetlogLogType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetlogLog_GetlogLogType? valueOf($core.int value) => _byValue[value];

  const GetlogLog_GetlogLogType._(super.v, super.n);
}

/// FunderUpdate.policy
class FunderupdateRequest_FunderupdatePolicy extends $pb.ProtobufEnum {
  static const FunderupdateRequest_FunderupdatePolicy MATCH = FunderupdateRequest_FunderupdatePolicy._(0, _omitEnumNames ? '' : 'MATCH');
  static const FunderupdateRequest_FunderupdatePolicy AVAILABLE = FunderupdateRequest_FunderupdatePolicy._(1, _omitEnumNames ? '' : 'AVAILABLE');
  static const FunderupdateRequest_FunderupdatePolicy FIXED = FunderupdateRequest_FunderupdatePolicy._(2, _omitEnumNames ? '' : 'FIXED');

  static const $core.List<FunderupdateRequest_FunderupdatePolicy> values = <FunderupdateRequest_FunderupdatePolicy> [
    MATCH,
    AVAILABLE,
    FIXED,
  ];

  static final $core.Map<$core.int, FunderupdateRequest_FunderupdatePolicy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FunderupdateRequest_FunderupdatePolicy? valueOf($core.int value) => _byValue[value];

  const FunderupdateRequest_FunderupdatePolicy._(super.v, super.n);
}

/// FunderUpdate.policy
class FunderupdateResponse_FunderupdatePolicy extends $pb.ProtobufEnum {
  static const FunderupdateResponse_FunderupdatePolicy MATCH = FunderupdateResponse_FunderupdatePolicy._(0, _omitEnumNames ? '' : 'MATCH');
  static const FunderupdateResponse_FunderupdatePolicy AVAILABLE = FunderupdateResponse_FunderupdatePolicy._(1, _omitEnumNames ? '' : 'AVAILABLE');
  static const FunderupdateResponse_FunderupdatePolicy FIXED = FunderupdateResponse_FunderupdatePolicy._(2, _omitEnumNames ? '' : 'FIXED');

  static const $core.List<FunderupdateResponse_FunderupdatePolicy> values = <FunderupdateResponse_FunderupdatePolicy> [
    MATCH,
    AVAILABLE,
    FIXED,
  ];

  static final $core.Map<$core.int, FunderupdateResponse_FunderupdatePolicy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FunderupdateResponse_FunderupdatePolicy? valueOf($core.int value) => _byValue[value];

  const FunderupdateResponse_FunderupdatePolicy._(super.v, super.n);
}

/// GetRoute.route[].style
class GetrouteRoute_GetrouteRouteStyle extends $pb.ProtobufEnum {
  static const GetrouteRoute_GetrouteRouteStyle TLV = GetrouteRoute_GetrouteRouteStyle._(0, _omitEnumNames ? '' : 'TLV');

  static const $core.List<GetrouteRoute_GetrouteRouteStyle> values = <GetrouteRoute_GetrouteRouteStyle> [
    TLV,
  ];

  static final $core.Map<$core.int, GetrouteRoute_GetrouteRouteStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetrouteRoute_GetrouteRouteStyle? valueOf($core.int value) => _byValue[value];

  const GetrouteRoute_GetrouteRouteStyle._(super.v, super.n);
}

/// ListForwards.status
class ListforwardsRequest_ListforwardsStatus extends $pb.ProtobufEnum {
  static const ListforwardsRequest_ListforwardsStatus OFFERED = ListforwardsRequest_ListforwardsStatus._(0, _omitEnumNames ? '' : 'OFFERED');
  static const ListforwardsRequest_ListforwardsStatus SETTLED = ListforwardsRequest_ListforwardsStatus._(1, _omitEnumNames ? '' : 'SETTLED');
  static const ListforwardsRequest_ListforwardsStatus LOCAL_FAILED = ListforwardsRequest_ListforwardsStatus._(2, _omitEnumNames ? '' : 'LOCAL_FAILED');
  static const ListforwardsRequest_ListforwardsStatus FAILED = ListforwardsRequest_ListforwardsStatus._(3, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<ListforwardsRequest_ListforwardsStatus> values = <ListforwardsRequest_ListforwardsStatus> [
    OFFERED,
    SETTLED,
    LOCAL_FAILED,
    FAILED,
  ];

  static final $core.Map<$core.int, ListforwardsRequest_ListforwardsStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListforwardsRequest_ListforwardsStatus? valueOf($core.int value) => _byValue[value];

  const ListforwardsRequest_ListforwardsStatus._(super.v, super.n);
}

/// ListForwards.index
class ListforwardsRequest_ListforwardsIndex extends $pb.ProtobufEnum {
  static const ListforwardsRequest_ListforwardsIndex CREATED = ListforwardsRequest_ListforwardsIndex._(0, _omitEnumNames ? '' : 'CREATED');
  static const ListforwardsRequest_ListforwardsIndex UPDATED = ListforwardsRequest_ListforwardsIndex._(1, _omitEnumNames ? '' : 'UPDATED');

  static const $core.List<ListforwardsRequest_ListforwardsIndex> values = <ListforwardsRequest_ListforwardsIndex> [
    CREATED,
    UPDATED,
  ];

  static final $core.Map<$core.int, ListforwardsRequest_ListforwardsIndex> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListforwardsRequest_ListforwardsIndex? valueOf($core.int value) => _byValue[value];

  const ListforwardsRequest_ListforwardsIndex._(super.v, super.n);
}

/// ListForwards.forwards[].status
class ListforwardsForwards_ListforwardsForwardsStatus extends $pb.ProtobufEnum {
  static const ListforwardsForwards_ListforwardsForwardsStatus OFFERED = ListforwardsForwards_ListforwardsForwardsStatus._(0, _omitEnumNames ? '' : 'OFFERED');
  static const ListforwardsForwards_ListforwardsForwardsStatus SETTLED = ListforwardsForwards_ListforwardsForwardsStatus._(1, _omitEnumNames ? '' : 'SETTLED');
  static const ListforwardsForwards_ListforwardsForwardsStatus LOCAL_FAILED = ListforwardsForwards_ListforwardsForwardsStatus._(2, _omitEnumNames ? '' : 'LOCAL_FAILED');
  static const ListforwardsForwards_ListforwardsForwardsStatus FAILED = ListforwardsForwards_ListforwardsForwardsStatus._(3, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<ListforwardsForwards_ListforwardsForwardsStatus> values = <ListforwardsForwards_ListforwardsForwardsStatus> [
    OFFERED,
    SETTLED,
    LOCAL_FAILED,
    FAILED,
  ];

  static final $core.Map<$core.int, ListforwardsForwards_ListforwardsForwardsStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListforwardsForwards_ListforwardsForwardsStatus? valueOf($core.int value) => _byValue[value];

  const ListforwardsForwards_ListforwardsForwardsStatus._(super.v, super.n);
}

/// ListForwards.forwards[].style
class ListforwardsForwards_ListforwardsForwardsStyle extends $pb.ProtobufEnum {
  static const ListforwardsForwards_ListforwardsForwardsStyle LEGACY = ListforwardsForwards_ListforwardsForwardsStyle._(0, _omitEnumNames ? '' : 'LEGACY');
  static const ListforwardsForwards_ListforwardsForwardsStyle TLV = ListforwardsForwards_ListforwardsForwardsStyle._(1, _omitEnumNames ? '' : 'TLV');

  static const $core.List<ListforwardsForwards_ListforwardsForwardsStyle> values = <ListforwardsForwards_ListforwardsForwardsStyle> [
    LEGACY,
    TLV,
  ];

  static final $core.Map<$core.int, ListforwardsForwards_ListforwardsForwardsStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListforwardsForwards_ListforwardsForwardsStyle? valueOf($core.int value) => _byValue[value];

  const ListforwardsForwards_ListforwardsForwardsStyle._(super.v, super.n);
}

/// ListPays.status
class ListpaysRequest_ListpaysStatus extends $pb.ProtobufEnum {
  static const ListpaysRequest_ListpaysStatus PENDING = ListpaysRequest_ListpaysStatus._(0, _omitEnumNames ? '' : 'PENDING');
  static const ListpaysRequest_ListpaysStatus COMPLETE = ListpaysRequest_ListpaysStatus._(1, _omitEnumNames ? '' : 'COMPLETE');
  static const ListpaysRequest_ListpaysStatus FAILED = ListpaysRequest_ListpaysStatus._(2, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<ListpaysRequest_ListpaysStatus> values = <ListpaysRequest_ListpaysStatus> [
    PENDING,
    COMPLETE,
    FAILED,
  ];

  static final $core.Map<$core.int, ListpaysRequest_ListpaysStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListpaysRequest_ListpaysStatus? valueOf($core.int value) => _byValue[value];

  const ListpaysRequest_ListpaysStatus._(super.v, super.n);
}

/// ListPays.pays[].status
class ListpaysPays_ListpaysPaysStatus extends $pb.ProtobufEnum {
  static const ListpaysPays_ListpaysPaysStatus PENDING = ListpaysPays_ListpaysPaysStatus._(0, _omitEnumNames ? '' : 'PENDING');
  static const ListpaysPays_ListpaysPaysStatus FAILED = ListpaysPays_ListpaysPaysStatus._(1, _omitEnumNames ? '' : 'FAILED');
  static const ListpaysPays_ListpaysPaysStatus COMPLETE = ListpaysPays_ListpaysPaysStatus._(2, _omitEnumNames ? '' : 'COMPLETE');

  static const $core.List<ListpaysPays_ListpaysPaysStatus> values = <ListpaysPays_ListpaysPaysStatus> [
    PENDING,
    FAILED,
    COMPLETE,
  ];

  static final $core.Map<$core.int, ListpaysPays_ListpaysPaysStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListpaysPays_ListpaysPaysStatus? valueOf($core.int value) => _byValue[value];

  const ListpaysPays_ListpaysPaysStatus._(super.v, super.n);
}

/// ListHtlcs.htlcs[].direction
class ListhtlcsHtlcs_ListhtlcsHtlcsDirection extends $pb.ProtobufEnum {
  static const ListhtlcsHtlcs_ListhtlcsHtlcsDirection OUT = ListhtlcsHtlcs_ListhtlcsHtlcsDirection._(0, _omitEnumNames ? '' : 'OUT');
  static const ListhtlcsHtlcs_ListhtlcsHtlcsDirection IN = ListhtlcsHtlcs_ListhtlcsHtlcsDirection._(1, _omitEnumNames ? '' : 'IN');

  static const $core.List<ListhtlcsHtlcs_ListhtlcsHtlcsDirection> values = <ListhtlcsHtlcs_ListhtlcsHtlcsDirection> [
    OUT,
    IN,
  ];

  static final $core.Map<$core.int, ListhtlcsHtlcs_ListhtlcsHtlcsDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListhtlcsHtlcs_ListhtlcsHtlcsDirection? valueOf($core.int value) => _byValue[value];

  const ListhtlcsHtlcs_ListhtlcsHtlcsDirection._(super.v, super.n);
}

/// MultiFundChannel.failed[].method
class MultifundchannelFailed_MultifundchannelFailedMethod extends $pb.ProtobufEnum {
  static const MultifundchannelFailed_MultifundchannelFailedMethod CONNECT = MultifundchannelFailed_MultifundchannelFailedMethod._(0, _omitEnumNames ? '' : 'CONNECT');
  static const MultifundchannelFailed_MultifundchannelFailedMethod OPENCHANNEL_INIT = MultifundchannelFailed_MultifundchannelFailedMethod._(1, _omitEnumNames ? '' : 'OPENCHANNEL_INIT');
  static const MultifundchannelFailed_MultifundchannelFailedMethod FUNDCHANNEL_START = MultifundchannelFailed_MultifundchannelFailedMethod._(2, _omitEnumNames ? '' : 'FUNDCHANNEL_START');
  static const MultifundchannelFailed_MultifundchannelFailedMethod FUNDCHANNEL_COMPLETE = MultifundchannelFailed_MultifundchannelFailedMethod._(3, _omitEnumNames ? '' : 'FUNDCHANNEL_COMPLETE');

  static const $core.List<MultifundchannelFailed_MultifundchannelFailedMethod> values = <MultifundchannelFailed_MultifundchannelFailedMethod> [
    CONNECT,
    OPENCHANNEL_INIT,
    FUNDCHANNEL_START,
    FUNDCHANNEL_COMPLETE,
  ];

  static final $core.Map<$core.int, MultifundchannelFailed_MultifundchannelFailedMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MultifundchannelFailed_MultifundchannelFailedMethod? valueOf($core.int value) => _byValue[value];

  const MultifundchannelFailed_MultifundchannelFailedMethod._(super.v, super.n);
}

/// RenePayStatus.paystatus[].status
class RenepaystatusPaystatus_RenepaystatusPaystatusStatus extends $pb.ProtobufEnum {
  static const RenepaystatusPaystatus_RenepaystatusPaystatusStatus COMPLETE = RenepaystatusPaystatus_RenepaystatusPaystatusStatus._(0, _omitEnumNames ? '' : 'COMPLETE');
  static const RenepaystatusPaystatus_RenepaystatusPaystatusStatus PENDING = RenepaystatusPaystatus_RenepaystatusPaystatusStatus._(1, _omitEnumNames ? '' : 'PENDING');
  static const RenepaystatusPaystatus_RenepaystatusPaystatusStatus FAILED = RenepaystatusPaystatus_RenepaystatusPaystatusStatus._(2, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<RenepaystatusPaystatus_RenepaystatusPaystatusStatus> values = <RenepaystatusPaystatus_RenepaystatusPaystatusStatus> [
    COMPLETE,
    PENDING,
    FAILED,
  ];

  static final $core.Map<$core.int, RenepaystatusPaystatus_RenepaystatusPaystatusStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RenepaystatusPaystatus_RenepaystatusPaystatusStatus? valueOf($core.int value) => _byValue[value];

  const RenepaystatusPaystatus_RenepaystatusPaystatusStatus._(super.v, super.n);
}

/// RenePay.status
class RenepayResponse_RenepayStatus extends $pb.ProtobufEnum {
  static const RenepayResponse_RenepayStatus COMPLETE = RenepayResponse_RenepayStatus._(0, _omitEnumNames ? '' : 'COMPLETE');
  static const RenepayResponse_RenepayStatus PENDING = RenepayResponse_RenepayStatus._(1, _omitEnumNames ? '' : 'PENDING');
  static const RenepayResponse_RenepayStatus FAILED = RenepayResponse_RenepayStatus._(2, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<RenepayResponse_RenepayStatus> values = <RenepayResponse_RenepayStatus> [
    COMPLETE,
    PENDING,
    FAILED,
  ];

  static final $core.Map<$core.int, RenepayResponse_RenepayStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RenepayResponse_RenepayStatus? valueOf($core.int value) => _byValue[value];

  const RenepayResponse_RenepayStatus._(super.v, super.n);
}

/// SendInvoice.status
class SendinvoiceResponse_SendinvoiceStatus extends $pb.ProtobufEnum {
  static const SendinvoiceResponse_SendinvoiceStatus UNPAID = SendinvoiceResponse_SendinvoiceStatus._(0, _omitEnumNames ? '' : 'UNPAID');
  static const SendinvoiceResponse_SendinvoiceStatus PAID = SendinvoiceResponse_SendinvoiceStatus._(1, _omitEnumNames ? '' : 'PAID');
  static const SendinvoiceResponse_SendinvoiceStatus EXPIRED = SendinvoiceResponse_SendinvoiceStatus._(2, _omitEnumNames ? '' : 'EXPIRED');

  static const $core.List<SendinvoiceResponse_SendinvoiceStatus> values = <SendinvoiceResponse_SendinvoiceStatus> [
    UNPAID,
    PAID,
    EXPIRED,
  ];

  static final $core.Map<$core.int, SendinvoiceResponse_SendinvoiceStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SendinvoiceResponse_SendinvoiceStatus? valueOf($core.int value) => _byValue[value];

  const SendinvoiceResponse_SendinvoiceStatus._(super.v, super.n);
}

/// Wait.subsystem
class WaitRequest_WaitSubsystem extends $pb.ProtobufEnum {
  static const WaitRequest_WaitSubsystem INVOICES = WaitRequest_WaitSubsystem._(0, _omitEnumNames ? '' : 'INVOICES');
  static const WaitRequest_WaitSubsystem FORWARDS = WaitRequest_WaitSubsystem._(1, _omitEnumNames ? '' : 'FORWARDS');
  static const WaitRequest_WaitSubsystem SENDPAYS = WaitRequest_WaitSubsystem._(2, _omitEnumNames ? '' : 'SENDPAYS');

  static const $core.List<WaitRequest_WaitSubsystem> values = <WaitRequest_WaitSubsystem> [
    INVOICES,
    FORWARDS,
    SENDPAYS,
  ];

  static final $core.Map<$core.int, WaitRequest_WaitSubsystem> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WaitRequest_WaitSubsystem? valueOf($core.int value) => _byValue[value];

  const WaitRequest_WaitSubsystem._(super.v, super.n);
}

/// Wait.indexname
class WaitRequest_WaitIndexname extends $pb.ProtobufEnum {
  static const WaitRequest_WaitIndexname CREATED = WaitRequest_WaitIndexname._(0, _omitEnumNames ? '' : 'CREATED');
  static const WaitRequest_WaitIndexname UPDATED = WaitRequest_WaitIndexname._(1, _omitEnumNames ? '' : 'UPDATED');
  static const WaitRequest_WaitIndexname DELETED = WaitRequest_WaitIndexname._(2, _omitEnumNames ? '' : 'DELETED');

  static const $core.List<WaitRequest_WaitIndexname> values = <WaitRequest_WaitIndexname> [
    CREATED,
    UPDATED,
    DELETED,
  ];

  static final $core.Map<$core.int, WaitRequest_WaitIndexname> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WaitRequest_WaitIndexname? valueOf($core.int value) => _byValue[value];

  const WaitRequest_WaitIndexname._(super.v, super.n);
}

/// Wait.subsystem
class WaitResponse_WaitSubsystem extends $pb.ProtobufEnum {
  static const WaitResponse_WaitSubsystem INVOICES = WaitResponse_WaitSubsystem._(0, _omitEnumNames ? '' : 'INVOICES');
  static const WaitResponse_WaitSubsystem FORWARDS = WaitResponse_WaitSubsystem._(1, _omitEnumNames ? '' : 'FORWARDS');
  static const WaitResponse_WaitSubsystem SENDPAYS = WaitResponse_WaitSubsystem._(2, _omitEnumNames ? '' : 'SENDPAYS');

  static const $core.List<WaitResponse_WaitSubsystem> values = <WaitResponse_WaitSubsystem> [
    INVOICES,
    FORWARDS,
    SENDPAYS,
  ];

  static final $core.Map<$core.int, WaitResponse_WaitSubsystem> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WaitResponse_WaitSubsystem? valueOf($core.int value) => _byValue[value];

  const WaitResponse_WaitSubsystem._(super.v, super.n);
}

/// Wait.details.status
class WaitDetails_WaitDetailsStatus extends $pb.ProtobufEnum {
  static const WaitDetails_WaitDetailsStatus UNPAID = WaitDetails_WaitDetailsStatus._(0, _omitEnumNames ? '' : 'UNPAID');
  static const WaitDetails_WaitDetailsStatus PAID = WaitDetails_WaitDetailsStatus._(1, _omitEnumNames ? '' : 'PAID');
  static const WaitDetails_WaitDetailsStatus EXPIRED = WaitDetails_WaitDetailsStatus._(2, _omitEnumNames ? '' : 'EXPIRED');
  static const WaitDetails_WaitDetailsStatus PENDING = WaitDetails_WaitDetailsStatus._(3, _omitEnumNames ? '' : 'PENDING');
  static const WaitDetails_WaitDetailsStatus FAILED = WaitDetails_WaitDetailsStatus._(4, _omitEnumNames ? '' : 'FAILED');
  static const WaitDetails_WaitDetailsStatus COMPLETE = WaitDetails_WaitDetailsStatus._(5, _omitEnumNames ? '' : 'COMPLETE');
  static const WaitDetails_WaitDetailsStatus OFFERED = WaitDetails_WaitDetailsStatus._(6, _omitEnumNames ? '' : 'OFFERED');
  static const WaitDetails_WaitDetailsStatus SETTLED = WaitDetails_WaitDetailsStatus._(7, _omitEnumNames ? '' : 'SETTLED');
  static const WaitDetails_WaitDetailsStatus LOCAL_FAILED = WaitDetails_WaitDetailsStatus._(8, _omitEnumNames ? '' : 'LOCAL_FAILED');

  static const $core.List<WaitDetails_WaitDetailsStatus> values = <WaitDetails_WaitDetailsStatus> [
    UNPAID,
    PAID,
    EXPIRED,
    PENDING,
    FAILED,
    COMPLETE,
    OFFERED,
    SETTLED,
    LOCAL_FAILED,
  ];

  static final $core.Map<$core.int, WaitDetails_WaitDetailsStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WaitDetails_WaitDetailsStatus? valueOf($core.int value) => _byValue[value];

  const WaitDetails_WaitDetailsStatus._(super.v, super.n);
}

/// ListConfigs.configs.conf.source
class ListconfigsConfigsConf_ListconfigsConfigsConfSource extends $pb.ProtobufEnum {
  static const ListconfigsConfigsConf_ListconfigsConfigsConfSource CMDLINE = ListconfigsConfigsConf_ListconfigsConfigsConfSource._(0, _omitEnumNames ? '' : 'CMDLINE');

  static const $core.List<ListconfigsConfigsConf_ListconfigsConfigsConfSource> values = <ListconfigsConfigsConf_ListconfigsConfigsConfSource> [
    CMDLINE,
  ];

  static final $core.Map<$core.int, ListconfigsConfigsConf_ListconfigsConfigsConfSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListconfigsConfigsConf_ListconfigsConfigsConfSource? valueOf($core.int value) => _byValue[value];

  const ListconfigsConfigsConf_ListconfigsConfigsConfSource._(super.v, super.n);
}

/// ListConfigs.configs.announce-addr-discovered.value_str
class ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str extends $pb.ProtobufEnum {
  static const ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str TRUE = ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str._(0, _omitEnumNames ? '' : 'TRUE');
  static const ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str FALSE = ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str._(1, _omitEnumNames ? '' : 'FALSE');
  static const ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str AUTO = ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str._(2, _omitEnumNames ? '' : 'AUTO');

  static const $core.List<ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str> values = <ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str> [
    TRUE,
    FALSE,
    AUTO,
  ];

  static final $core.Map<$core.int, ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str? valueOf($core.int value) => _byValue[value];

  const ListconfigsConfigsAnnounceaddrdiscovered_ListconfigsConfigsAnnounceaddrdiscoveredValue_str._(super.v, super.n);
}

/// Stop.result
class StopResponse_StopResult extends $pb.ProtobufEnum {
  static const StopResponse_StopResult SHUTDOWN_COMPLETE = StopResponse_StopResult._(0, _omitEnumNames ? '' : 'SHUTDOWN_COMPLETE');

  static const $core.List<StopResponse_StopResult> values = <StopResponse_StopResult> [
    SHUTDOWN_COMPLETE,
  ];

  static final $core.Map<$core.int, StopResponse_StopResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StopResponse_StopResult? valueOf($core.int value) => _byValue[value];

  const StopResponse_StopResult._(super.v, super.n);
}

/// Help.format-hint
class HelpResponse_HelpFormathint extends $pb.ProtobufEnum {
  static const HelpResponse_HelpFormathint SIMPLE = HelpResponse_HelpFormathint._(0, _omitEnumNames ? '' : 'SIMPLE');

  static const $core.List<HelpResponse_HelpFormathint> values = <HelpResponse_HelpFormathint> [
    SIMPLE,
  ];

  static final $core.Map<$core.int, HelpResponse_HelpFormathint> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HelpResponse_HelpFormathint? valueOf($core.int value) => _byValue[value];

  const HelpResponse_HelpFormathint._(super.v, super.n);
}

/// Bkpr-DumpIncomeCsv.csv_format
class BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format extends $pb.ProtobufEnum {
  static const BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format COINTRACKER = BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format._(0, _omitEnumNames ? '' : 'COINTRACKER');
  static const BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format KOINLY = BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format._(1, _omitEnumNames ? '' : 'KOINLY');
  static const BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format HARMONY = BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format._(2, _omitEnumNames ? '' : 'HARMONY');
  static const BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format QUICKBOOKS = BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format._(3, _omitEnumNames ? '' : 'QUICKBOOKS');

  static const $core.List<BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format> values = <BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format> [
    COINTRACKER,
    KOINLY,
    HARMONY,
    QUICKBOOKS,
  ];

  static final $core.Map<$core.int, BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format? valueOf($core.int value) => _byValue[value];

  const BkprdumpincomecsvResponse_BkprdumpincomecsvCsv_format._(super.v, super.n);
}

/// Bkpr-ListAccountEvents.events[].type
class BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType extends $pb.ProtobufEnum {
  static const BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType ONCHAIN_FEE = BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType._(0, _omitEnumNames ? '' : 'ONCHAIN_FEE');
  static const BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType CHAIN = BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType._(1, _omitEnumNames ? '' : 'CHAIN');
  static const BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType CHANNEL = BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType._(2, _omitEnumNames ? '' : 'CHANNEL');

  static const $core.List<BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType> values = <BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType> [
    ONCHAIN_FEE,
    CHAIN,
    CHANNEL,
  ];

  static final $core.Map<$core.int, BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType? valueOf($core.int value) => _byValue[value];

  const BkprlistaccounteventsEvents_BkprlistaccounteventsEventsType._(super.v, super.n);
}

/// connect.direction
class PeerConnectNotification_PeerConnectDirection extends $pb.ProtobufEnum {
  static const PeerConnectNotification_PeerConnectDirection IN = PeerConnectNotification_PeerConnectDirection._(0, _omitEnumNames ? '' : 'IN');
  static const PeerConnectNotification_PeerConnectDirection OUT = PeerConnectNotification_PeerConnectDirection._(1, _omitEnumNames ? '' : 'OUT');

  static const $core.List<PeerConnectNotification_PeerConnectDirection> values = <PeerConnectNotification_PeerConnectDirection> [
    IN,
    OUT,
  ];

  static final $core.Map<$core.int, PeerConnectNotification_PeerConnectDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PeerConnectNotification_PeerConnectDirection? valueOf($core.int value) => _byValue[value];

  const PeerConnectNotification_PeerConnectDirection._(super.v, super.n);
}

/// connect.address.type
class PeerConnectAddress_PeerConnectAddressType extends $pb.ProtobufEnum {
  static const PeerConnectAddress_PeerConnectAddressType LOCAL_SOCKET = PeerConnectAddress_PeerConnectAddressType._(0, _omitEnumNames ? '' : 'LOCAL_SOCKET');
  static const PeerConnectAddress_PeerConnectAddressType IPV4 = PeerConnectAddress_PeerConnectAddressType._(1, _omitEnumNames ? '' : 'IPV4');
  static const PeerConnectAddress_PeerConnectAddressType IPV6 = PeerConnectAddress_PeerConnectAddressType._(2, _omitEnumNames ? '' : 'IPV6');
  static const PeerConnectAddress_PeerConnectAddressType TORV2 = PeerConnectAddress_PeerConnectAddressType._(3, _omitEnumNames ? '' : 'TORV2');
  static const PeerConnectAddress_PeerConnectAddressType TORV3 = PeerConnectAddress_PeerConnectAddressType._(4, _omitEnumNames ? '' : 'TORV3');

  static const $core.List<PeerConnectAddress_PeerConnectAddressType> values = <PeerConnectAddress_PeerConnectAddressType> [
    LOCAL_SOCKET,
    IPV4,
    IPV6,
    TORV2,
    TORV3,
  ];

  static final $core.Map<$core.int, PeerConnectAddress_PeerConnectAddressType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PeerConnectAddress_PeerConnectAddressType? valueOf($core.int value) => _byValue[value];

  const PeerConnectAddress_PeerConnectAddressType._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
