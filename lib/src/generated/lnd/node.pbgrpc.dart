//
//  Generated code. Do not modify.
//  source: lnd/node.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'node.pb.dart' as $3;

export 'node.pb.dart';

@$pb.GrpcServiceName('cln.Node')
class NodeClient extends $grpc.Client {
  static final _$getinfo = $grpc.ClientMethod<$3.GetinfoRequest, $3.GetinfoResponse>(
      '/cln.Node/Getinfo',
      ($3.GetinfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetinfoResponse.fromBuffer(value));
  static final _$listPeers = $grpc.ClientMethod<$3.ListpeersRequest, $3.ListpeersResponse>(
      '/cln.Node/ListPeers',
      ($3.ListpeersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListpeersResponse.fromBuffer(value));
  static final _$listFunds = $grpc.ClientMethod<$3.ListfundsRequest, $3.ListfundsResponse>(
      '/cln.Node/ListFunds',
      ($3.ListfundsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListfundsResponse.fromBuffer(value));
  static final _$sendPay = $grpc.ClientMethod<$3.SendpayRequest, $3.SendpayResponse>(
      '/cln.Node/SendPay',
      ($3.SendpayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SendpayResponse.fromBuffer(value));
  static final _$listChannels = $grpc.ClientMethod<$3.ListchannelsRequest, $3.ListchannelsResponse>(
      '/cln.Node/ListChannels',
      ($3.ListchannelsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListchannelsResponse.fromBuffer(value));
  static final _$addGossip = $grpc.ClientMethod<$3.AddgossipRequest, $3.AddgossipResponse>(
      '/cln.Node/AddGossip',
      ($3.AddgossipRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddgossipResponse.fromBuffer(value));
  static final _$addPsbtOutput = $grpc.ClientMethod<$3.AddpsbtoutputRequest, $3.AddpsbtoutputResponse>(
      '/cln.Node/AddPsbtOutput',
      ($3.AddpsbtoutputRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AddpsbtoutputResponse.fromBuffer(value));
  static final _$autoCleanOnce = $grpc.ClientMethod<$3.AutocleanonceRequest, $3.AutocleanonceResponse>(
      '/cln.Node/AutoCleanOnce',
      ($3.AutocleanonceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AutocleanonceResponse.fromBuffer(value));
  static final _$autoCleanStatus = $grpc.ClientMethod<$3.AutocleanstatusRequest, $3.AutocleanstatusResponse>(
      '/cln.Node/AutoCleanStatus',
      ($3.AutocleanstatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AutocleanstatusResponse.fromBuffer(value));
  static final _$checkMessage = $grpc.ClientMethod<$3.CheckmessageRequest, $3.CheckmessageResponse>(
      '/cln.Node/CheckMessage',
      ($3.CheckmessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CheckmessageResponse.fromBuffer(value));
  static final _$close = $grpc.ClientMethod<$3.CloseRequest, $3.CloseResponse>(
      '/cln.Node/Close',
      ($3.CloseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CloseResponse.fromBuffer(value));
  static final _$connectPeer = $grpc.ClientMethod<$3.ConnectRequest, $3.ConnectResponse>(
      '/cln.Node/ConnectPeer',
      ($3.ConnectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ConnectResponse.fromBuffer(value));
  static final _$createInvoice = $grpc.ClientMethod<$3.CreateinvoiceRequest, $3.CreateinvoiceResponse>(
      '/cln.Node/CreateInvoice',
      ($3.CreateinvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateinvoiceResponse.fromBuffer(value));
  static final _$datastore = $grpc.ClientMethod<$3.DatastoreRequest, $3.DatastoreResponse>(
      '/cln.Node/Datastore',
      ($3.DatastoreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DatastoreResponse.fromBuffer(value));
  static final _$datastoreUsage = $grpc.ClientMethod<$3.DatastoreusageRequest, $3.DatastoreusageResponse>(
      '/cln.Node/DatastoreUsage',
      ($3.DatastoreusageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DatastoreusageResponse.fromBuffer(value));
  static final _$createOnion = $grpc.ClientMethod<$3.CreateonionRequest, $3.CreateonionResponse>(
      '/cln.Node/CreateOnion',
      ($3.CreateonionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateonionResponse.fromBuffer(value));
  static final _$delDatastore = $grpc.ClientMethod<$3.DeldatastoreRequest, $3.DeldatastoreResponse>(
      '/cln.Node/DelDatastore',
      ($3.DeldatastoreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeldatastoreResponse.fromBuffer(value));
  static final _$delInvoice = $grpc.ClientMethod<$3.DelinvoiceRequest, $3.DelinvoiceResponse>(
      '/cln.Node/DelInvoice',
      ($3.DelinvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DelinvoiceResponse.fromBuffer(value));
  static final _$devForgetChannel = $grpc.ClientMethod<$3.DevforgetchannelRequest, $3.DevforgetchannelResponse>(
      '/cln.Node/DevForgetChannel',
      ($3.DevforgetchannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DevforgetchannelResponse.fromBuffer(value));
  static final _$emergencyRecover = $grpc.ClientMethod<$3.EmergencyrecoverRequest, $3.EmergencyrecoverResponse>(
      '/cln.Node/EmergencyRecover',
      ($3.EmergencyrecoverRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.EmergencyrecoverResponse.fromBuffer(value));
  static final _$recover = $grpc.ClientMethod<$3.RecoverRequest, $3.RecoverResponse>(
      '/cln.Node/Recover',
      ($3.RecoverRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RecoverResponse.fromBuffer(value));
  static final _$recoverChannel = $grpc.ClientMethod<$3.RecoverchannelRequest, $3.RecoverchannelResponse>(
      '/cln.Node/RecoverChannel',
      ($3.RecoverchannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RecoverchannelResponse.fromBuffer(value));
  static final _$invoice = $grpc.ClientMethod<$3.InvoiceRequest, $3.InvoiceResponse>(
      '/cln.Node/Invoice',
      ($3.InvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.InvoiceResponse.fromBuffer(value));
  static final _$createInvoiceRequest = $grpc.ClientMethod<$3.InvoicerequestRequest, $3.InvoicerequestResponse>(
      '/cln.Node/CreateInvoiceRequest',
      ($3.InvoicerequestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.InvoicerequestResponse.fromBuffer(value));
  static final _$disableInvoiceRequest = $grpc.ClientMethod<$3.DisableinvoicerequestRequest, $3.DisableinvoicerequestResponse>(
      '/cln.Node/DisableInvoiceRequest',
      ($3.DisableinvoicerequestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DisableinvoicerequestResponse.fromBuffer(value));
  static final _$listInvoiceRequests = $grpc.ClientMethod<$3.ListinvoicerequestsRequest, $3.ListinvoicerequestsResponse>(
      '/cln.Node/ListInvoiceRequests',
      ($3.ListinvoicerequestsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListinvoicerequestsResponse.fromBuffer(value));
  static final _$listDatastore = $grpc.ClientMethod<$3.ListdatastoreRequest, $3.ListdatastoreResponse>(
      '/cln.Node/ListDatastore',
      ($3.ListdatastoreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListdatastoreResponse.fromBuffer(value));
  static final _$listInvoices = $grpc.ClientMethod<$3.ListinvoicesRequest, $3.ListinvoicesResponse>(
      '/cln.Node/ListInvoices',
      ($3.ListinvoicesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListinvoicesResponse.fromBuffer(value));
  static final _$sendOnion = $grpc.ClientMethod<$3.SendonionRequest, $3.SendonionResponse>(
      '/cln.Node/SendOnion',
      ($3.SendonionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SendonionResponse.fromBuffer(value));
  static final _$listSendPays = $grpc.ClientMethod<$3.ListsendpaysRequest, $3.ListsendpaysResponse>(
      '/cln.Node/ListSendPays',
      ($3.ListsendpaysRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListsendpaysResponse.fromBuffer(value));
  static final _$listTransactions = $grpc.ClientMethod<$3.ListtransactionsRequest, $3.ListtransactionsResponse>(
      '/cln.Node/ListTransactions',
      ($3.ListtransactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListtransactionsResponse.fromBuffer(value));
  static final _$makeSecret = $grpc.ClientMethod<$3.MakesecretRequest, $3.MakesecretResponse>(
      '/cln.Node/MakeSecret',
      ($3.MakesecretRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.MakesecretResponse.fromBuffer(value));
  static final _$pay = $grpc.ClientMethod<$3.PayRequest, $3.PayResponse>(
      '/cln.Node/Pay',
      ($3.PayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PayResponse.fromBuffer(value));
  static final _$listNodes = $grpc.ClientMethod<$3.ListnodesRequest, $3.ListnodesResponse>(
      '/cln.Node/ListNodes',
      ($3.ListnodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListnodesResponse.fromBuffer(value));
  static final _$waitAnyInvoice = $grpc.ClientMethod<$3.WaitanyinvoiceRequest, $3.WaitanyinvoiceResponse>(
      '/cln.Node/WaitAnyInvoice',
      ($3.WaitanyinvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.WaitanyinvoiceResponse.fromBuffer(value));
  static final _$waitInvoice = $grpc.ClientMethod<$3.WaitinvoiceRequest, $3.WaitinvoiceResponse>(
      '/cln.Node/WaitInvoice',
      ($3.WaitinvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.WaitinvoiceResponse.fromBuffer(value));
  static final _$waitSendPay = $grpc.ClientMethod<$3.WaitsendpayRequest, $3.WaitsendpayResponse>(
      '/cln.Node/WaitSendPay',
      ($3.WaitsendpayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.WaitsendpayResponse.fromBuffer(value));
  static final _$newAddr = $grpc.ClientMethod<$3.NewaddrRequest, $3.NewaddrResponse>(
      '/cln.Node/NewAddr',
      ($3.NewaddrRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.NewaddrResponse.fromBuffer(value));
  static final _$withdraw = $grpc.ClientMethod<$3.WithdrawRequest, $3.WithdrawResponse>(
      '/cln.Node/Withdraw',
      ($3.WithdrawRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.WithdrawResponse.fromBuffer(value));
  static final _$keySend = $grpc.ClientMethod<$3.KeysendRequest, $3.KeysendResponse>(
      '/cln.Node/KeySend',
      ($3.KeysendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.KeysendResponse.fromBuffer(value));
  static final _$fundPsbt = $grpc.ClientMethod<$3.FundpsbtRequest, $3.FundpsbtResponse>(
      '/cln.Node/FundPsbt',
      ($3.FundpsbtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FundpsbtResponse.fromBuffer(value));
  static final _$sendPsbt = $grpc.ClientMethod<$3.SendpsbtRequest, $3.SendpsbtResponse>(
      '/cln.Node/SendPsbt',
      ($3.SendpsbtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SendpsbtResponse.fromBuffer(value));
  static final _$signPsbt = $grpc.ClientMethod<$3.SignpsbtRequest, $3.SignpsbtResponse>(
      '/cln.Node/SignPsbt',
      ($3.SignpsbtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SignpsbtResponse.fromBuffer(value));
  static final _$utxoPsbt = $grpc.ClientMethod<$3.UtxopsbtRequest, $3.UtxopsbtResponse>(
      '/cln.Node/UtxoPsbt',
      ($3.UtxopsbtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UtxopsbtResponse.fromBuffer(value));
  static final _$txDiscard = $grpc.ClientMethod<$3.TxdiscardRequest, $3.TxdiscardResponse>(
      '/cln.Node/TxDiscard',
      ($3.TxdiscardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TxdiscardResponse.fromBuffer(value));
  static final _$txPrepare = $grpc.ClientMethod<$3.TxprepareRequest, $3.TxprepareResponse>(
      '/cln.Node/TxPrepare',
      ($3.TxprepareRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TxprepareResponse.fromBuffer(value));
  static final _$txSend = $grpc.ClientMethod<$3.TxsendRequest, $3.TxsendResponse>(
      '/cln.Node/TxSend',
      ($3.TxsendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TxsendResponse.fromBuffer(value));
  static final _$listPeerChannels = $grpc.ClientMethod<$3.ListpeerchannelsRequest, $3.ListpeerchannelsResponse>(
      '/cln.Node/ListPeerChannels',
      ($3.ListpeerchannelsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListpeerchannelsResponse.fromBuffer(value));
  static final _$listClosedChannels = $grpc.ClientMethod<$3.ListclosedchannelsRequest, $3.ListclosedchannelsResponse>(
      '/cln.Node/ListClosedChannels',
      ($3.ListclosedchannelsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListclosedchannelsResponse.fromBuffer(value));
  static final _$decodePay = $grpc.ClientMethod<$3.DecodepayRequest, $3.DecodepayResponse>(
      '/cln.Node/DecodePay',
      ($3.DecodepayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DecodepayResponse.fromBuffer(value));
  static final _$decode = $grpc.ClientMethod<$3.DecodeRequest, $3.DecodeResponse>(
      '/cln.Node/Decode',
      ($3.DecodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DecodeResponse.fromBuffer(value));
  static final _$delPay = $grpc.ClientMethod<$3.DelpayRequest, $3.DelpayResponse>(
      '/cln.Node/DelPay',
      ($3.DelpayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DelpayResponse.fromBuffer(value));
  static final _$delForward = $grpc.ClientMethod<$3.DelforwardRequest, $3.DelforwardResponse>(
      '/cln.Node/DelForward',
      ($3.DelforwardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DelforwardResponse.fromBuffer(value));
  static final _$disableOffer = $grpc.ClientMethod<$3.DisableofferRequest, $3.DisableofferResponse>(
      '/cln.Node/DisableOffer',
      ($3.DisableofferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DisableofferResponse.fromBuffer(value));
  static final _$disconnect = $grpc.ClientMethod<$3.DisconnectRequest, $3.DisconnectResponse>(
      '/cln.Node/Disconnect',
      ($3.DisconnectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DisconnectResponse.fromBuffer(value));
  static final _$feerates = $grpc.ClientMethod<$3.FeeratesRequest, $3.FeeratesResponse>(
      '/cln.Node/Feerates',
      ($3.FeeratesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FeeratesResponse.fromBuffer(value));
  static final _$fetchInvoice = $grpc.ClientMethod<$3.FetchinvoiceRequest, $3.FetchinvoiceResponse>(
      '/cln.Node/FetchInvoice',
      ($3.FetchinvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FetchinvoiceResponse.fromBuffer(value));
  static final _$fundChannel_Cancel = $grpc.ClientMethod<$3.Fundchannel_cancelRequest, $3.Fundchannel_cancelResponse>(
      '/cln.Node/FundChannel_Cancel',
      ($3.Fundchannel_cancelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Fundchannel_cancelResponse.fromBuffer(value));
  static final _$fundChannel_Complete = $grpc.ClientMethod<$3.Fundchannel_completeRequest, $3.Fundchannel_completeResponse>(
      '/cln.Node/FundChannel_Complete',
      ($3.Fundchannel_completeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Fundchannel_completeResponse.fromBuffer(value));
  static final _$fundChannel = $grpc.ClientMethod<$3.FundchannelRequest, $3.FundchannelResponse>(
      '/cln.Node/FundChannel',
      ($3.FundchannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FundchannelResponse.fromBuffer(value));
  static final _$fundChannel_Start = $grpc.ClientMethod<$3.Fundchannel_startRequest, $3.Fundchannel_startResponse>(
      '/cln.Node/FundChannel_Start',
      ($3.Fundchannel_startRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Fundchannel_startResponse.fromBuffer(value));
  static final _$getLog = $grpc.ClientMethod<$3.GetlogRequest, $3.GetlogResponse>(
      '/cln.Node/GetLog',
      ($3.GetlogRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetlogResponse.fromBuffer(value));
  static final _$funderUpdate = $grpc.ClientMethod<$3.FunderupdateRequest, $3.FunderupdateResponse>(
      '/cln.Node/FunderUpdate',
      ($3.FunderupdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.FunderupdateResponse.fromBuffer(value));
  static final _$getRoute = $grpc.ClientMethod<$3.GetrouteRequest, $3.GetrouteResponse>(
      '/cln.Node/GetRoute',
      ($3.GetrouteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetrouteResponse.fromBuffer(value));
  static final _$listForwards = $grpc.ClientMethod<$3.ListforwardsRequest, $3.ListforwardsResponse>(
      '/cln.Node/ListForwards',
      ($3.ListforwardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListforwardsResponse.fromBuffer(value));
  static final _$listOffers = $grpc.ClientMethod<$3.ListoffersRequest, $3.ListoffersResponse>(
      '/cln.Node/ListOffers',
      ($3.ListoffersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListoffersResponse.fromBuffer(value));
  static final _$listPays = $grpc.ClientMethod<$3.ListpaysRequest, $3.ListpaysResponse>(
      '/cln.Node/ListPays',
      ($3.ListpaysRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListpaysResponse.fromBuffer(value));
  static final _$listHtlcs = $grpc.ClientMethod<$3.ListhtlcsRequest, $3.ListhtlcsResponse>(
      '/cln.Node/ListHtlcs',
      ($3.ListhtlcsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListhtlcsResponse.fromBuffer(value));
  static final _$multiFundChannel = $grpc.ClientMethod<$3.MultifundchannelRequest, $3.MultifundchannelResponse>(
      '/cln.Node/MultiFundChannel',
      ($3.MultifundchannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.MultifundchannelResponse.fromBuffer(value));
  static final _$multiWithdraw = $grpc.ClientMethod<$3.MultiwithdrawRequest, $3.MultiwithdrawResponse>(
      '/cln.Node/MultiWithdraw',
      ($3.MultiwithdrawRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.MultiwithdrawResponse.fromBuffer(value));
  static final _$offer = $grpc.ClientMethod<$3.OfferRequest, $3.OfferResponse>(
      '/cln.Node/Offer',
      ($3.OfferRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.OfferResponse.fromBuffer(value));
  static final _$openChannel_Abort = $grpc.ClientMethod<$3.Openchannel_abortRequest, $3.Openchannel_abortResponse>(
      '/cln.Node/OpenChannel_Abort',
      ($3.Openchannel_abortRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Openchannel_abortResponse.fromBuffer(value));
  static final _$openChannel_Bump = $grpc.ClientMethod<$3.Openchannel_bumpRequest, $3.Openchannel_bumpResponse>(
      '/cln.Node/OpenChannel_Bump',
      ($3.Openchannel_bumpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Openchannel_bumpResponse.fromBuffer(value));
  static final _$openChannel_Init = $grpc.ClientMethod<$3.Openchannel_initRequest, $3.Openchannel_initResponse>(
      '/cln.Node/OpenChannel_Init',
      ($3.Openchannel_initRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Openchannel_initResponse.fromBuffer(value));
  static final _$openChannel_Signed = $grpc.ClientMethod<$3.Openchannel_signedRequest, $3.Openchannel_signedResponse>(
      '/cln.Node/OpenChannel_Signed',
      ($3.Openchannel_signedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Openchannel_signedResponse.fromBuffer(value));
  static final _$openChannel_Update = $grpc.ClientMethod<$3.Openchannel_updateRequest, $3.Openchannel_updateResponse>(
      '/cln.Node/OpenChannel_Update',
      ($3.Openchannel_updateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Openchannel_updateResponse.fromBuffer(value));
  static final _$ping = $grpc.ClientMethod<$3.PingRequest, $3.PingResponse>(
      '/cln.Node/Ping',
      ($3.PingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PingResponse.fromBuffer(value));
  static final _$plugin = $grpc.ClientMethod<$3.PluginRequest, $3.PluginResponse>(
      '/cln.Node/Plugin',
      ($3.PluginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PluginResponse.fromBuffer(value));
  static final _$renePayStatus = $grpc.ClientMethod<$3.RenepaystatusRequest, $3.RenepaystatusResponse>(
      '/cln.Node/RenePayStatus',
      ($3.RenepaystatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RenepaystatusResponse.fromBuffer(value));
  static final _$renePay = $grpc.ClientMethod<$3.RenepayRequest, $3.RenepayResponse>(
      '/cln.Node/RenePay',
      ($3.RenepayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RenepayResponse.fromBuffer(value));
  static final _$reserveInputs = $grpc.ClientMethod<$3.ReserveinputsRequest, $3.ReserveinputsResponse>(
      '/cln.Node/ReserveInputs',
      ($3.ReserveinputsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ReserveinputsResponse.fromBuffer(value));
  static final _$sendCustomMsg = $grpc.ClientMethod<$3.SendcustommsgRequest, $3.SendcustommsgResponse>(
      '/cln.Node/SendCustomMsg',
      ($3.SendcustommsgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SendcustommsgResponse.fromBuffer(value));
  static final _$sendInvoice = $grpc.ClientMethod<$3.SendinvoiceRequest, $3.SendinvoiceResponse>(
      '/cln.Node/SendInvoice',
      ($3.SendinvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SendinvoiceResponse.fromBuffer(value));
  static final _$setChannel = $grpc.ClientMethod<$3.SetchannelRequest, $3.SetchannelResponse>(
      '/cln.Node/SetChannel',
      ($3.SetchannelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SetchannelResponse.fromBuffer(value));
  static final _$setConfig = $grpc.ClientMethod<$3.SetconfigRequest, $3.SetconfigResponse>(
      '/cln.Node/SetConfig',
      ($3.SetconfigRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SetconfigResponse.fromBuffer(value));
  static final _$setPsbtVersion = $grpc.ClientMethod<$3.SetpsbtversionRequest, $3.SetpsbtversionResponse>(
      '/cln.Node/SetPsbtVersion',
      ($3.SetpsbtversionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SetpsbtversionResponse.fromBuffer(value));
  static final _$signInvoice = $grpc.ClientMethod<$3.SigninvoiceRequest, $3.SigninvoiceResponse>(
      '/cln.Node/SignInvoice',
      ($3.SigninvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SigninvoiceResponse.fromBuffer(value));
  static final _$signMessage = $grpc.ClientMethod<$3.SignmessageRequest, $3.SignmessageResponse>(
      '/cln.Node/SignMessage',
      ($3.SignmessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SignmessageResponse.fromBuffer(value));
  static final _$splice_Init = $grpc.ClientMethod<$3.Splice_initRequest, $3.Splice_initResponse>(
      '/cln.Node/Splice_Init',
      ($3.Splice_initRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Splice_initResponse.fromBuffer(value));
  static final _$splice_Signed = $grpc.ClientMethod<$3.Splice_signedRequest, $3.Splice_signedResponse>(
      '/cln.Node/Splice_Signed',
      ($3.Splice_signedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Splice_signedResponse.fromBuffer(value));
  static final _$splice_Update = $grpc.ClientMethod<$3.Splice_updateRequest, $3.Splice_updateResponse>(
      '/cln.Node/Splice_Update',
      ($3.Splice_updateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Splice_updateResponse.fromBuffer(value));
  static final _$unreserveInputs = $grpc.ClientMethod<$3.UnreserveinputsRequest, $3.UnreserveinputsResponse>(
      '/cln.Node/UnreserveInputs',
      ($3.UnreserveinputsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UnreserveinputsResponse.fromBuffer(value));
  static final _$upgradeWallet = $grpc.ClientMethod<$3.UpgradewalletRequest, $3.UpgradewalletResponse>(
      '/cln.Node/UpgradeWallet',
      ($3.UpgradewalletRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpgradewalletResponse.fromBuffer(value));
  static final _$waitBlockHeight = $grpc.ClientMethod<$3.WaitblockheightRequest, $3.WaitblockheightResponse>(
      '/cln.Node/WaitBlockHeight',
      ($3.WaitblockheightRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.WaitblockheightResponse.fromBuffer(value));
  static final _$wait = $grpc.ClientMethod<$3.WaitRequest, $3.WaitResponse>(
      '/cln.Node/Wait',
      ($3.WaitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.WaitResponse.fromBuffer(value));
  static final _$listConfigs = $grpc.ClientMethod<$3.ListconfigsRequest, $3.ListconfigsResponse>(
      '/cln.Node/ListConfigs',
      ($3.ListconfigsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ListconfigsResponse.fromBuffer(value));
  static final _$stop = $grpc.ClientMethod<$3.StopRequest, $3.StopResponse>(
      '/cln.Node/Stop',
      ($3.StopRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.StopResponse.fromBuffer(value));
  static final _$help = $grpc.ClientMethod<$3.HelpRequest, $3.HelpResponse>(
      '/cln.Node/Help',
      ($3.HelpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.HelpResponse.fromBuffer(value));
  static final _$preApproveKeysend = $grpc.ClientMethod<$3.PreapprovekeysendRequest, $3.PreapprovekeysendResponse>(
      '/cln.Node/PreApproveKeysend',
      ($3.PreapprovekeysendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PreapprovekeysendResponse.fromBuffer(value));
  static final _$preApproveInvoice = $grpc.ClientMethod<$3.PreapproveinvoiceRequest, $3.PreapproveinvoiceResponse>(
      '/cln.Node/PreApproveInvoice',
      ($3.PreapproveinvoiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PreapproveinvoiceResponse.fromBuffer(value));
  static final _$staticBackup = $grpc.ClientMethod<$3.StaticbackupRequest, $3.StaticbackupResponse>(
      '/cln.Node/StaticBackup',
      ($3.StaticbackupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.StaticbackupResponse.fromBuffer(value));
  static final _$bkprChannelsApy = $grpc.ClientMethod<$3.BkprchannelsapyRequest, $3.BkprchannelsapyResponse>(
      '/cln.Node/BkprChannelsApy',
      ($3.BkprchannelsapyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BkprchannelsapyResponse.fromBuffer(value));
  static final _$bkprDumpIncomeCsv = $grpc.ClientMethod<$3.BkprdumpincomecsvRequest, $3.BkprdumpincomecsvResponse>(
      '/cln.Node/BkprDumpIncomeCsv',
      ($3.BkprdumpincomecsvRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BkprdumpincomecsvResponse.fromBuffer(value));
  static final _$bkprInspect = $grpc.ClientMethod<$3.BkprinspectRequest, $3.BkprinspectResponse>(
      '/cln.Node/BkprInspect',
      ($3.BkprinspectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BkprinspectResponse.fromBuffer(value));
  static final _$bkprListAccountEvents = $grpc.ClientMethod<$3.BkprlistaccounteventsRequest, $3.BkprlistaccounteventsResponse>(
      '/cln.Node/BkprListAccountEvents',
      ($3.BkprlistaccounteventsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BkprlistaccounteventsResponse.fromBuffer(value));
  static final _$bkprListBalances = $grpc.ClientMethod<$3.BkprlistbalancesRequest, $3.BkprlistbalancesResponse>(
      '/cln.Node/BkprListBalances',
      ($3.BkprlistbalancesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BkprlistbalancesResponse.fromBuffer(value));
  static final _$bkprListIncome = $grpc.ClientMethod<$3.BkprlistincomeRequest, $3.BkprlistincomeResponse>(
      '/cln.Node/BkprListIncome',
      ($3.BkprlistincomeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BkprlistincomeResponse.fromBuffer(value));
  static final _$blacklistRune = $grpc.ClientMethod<$3.BlacklistruneRequest, $3.BlacklistruneResponse>(
      '/cln.Node/BlacklistRune',
      ($3.BlacklistruneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BlacklistruneResponse.fromBuffer(value));
  static final _$checkRune = $grpc.ClientMethod<$3.CheckruneRequest, $3.CheckruneResponse>(
      '/cln.Node/CheckRune',
      ($3.CheckruneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CheckruneResponse.fromBuffer(value));
  static final _$createRune = $grpc.ClientMethod<$3.CreateruneRequest, $3.CreateruneResponse>(
      '/cln.Node/CreateRune',
      ($3.CreateruneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateruneResponse.fromBuffer(value));
  static final _$showRunes = $grpc.ClientMethod<$3.ShowrunesRequest, $3.ShowrunesResponse>(
      '/cln.Node/ShowRunes',
      ($3.ShowrunesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ShowrunesResponse.fromBuffer(value));
  static final _$subscribeBlockAdded = $grpc.ClientMethod<$3.StreamBlockAddedRequest, $3.BlockAddedNotification>(
      '/cln.Node/SubscribeBlockAdded',
      ($3.StreamBlockAddedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BlockAddedNotification.fromBuffer(value));
  static final _$subscribeChannelOpenFailed = $grpc.ClientMethod<$3.StreamChannelOpenFailedRequest, $3.ChannelOpenFailedNotification>(
      '/cln.Node/SubscribeChannelOpenFailed',
      ($3.StreamChannelOpenFailedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChannelOpenFailedNotification.fromBuffer(value));
  static final _$subscribeChannelOpened = $grpc.ClientMethod<$3.StreamChannelOpenedRequest, $3.ChannelOpenedNotification>(
      '/cln.Node/SubscribeChannelOpened',
      ($3.StreamChannelOpenedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ChannelOpenedNotification.fromBuffer(value));
  static final _$subscribeConnect = $grpc.ClientMethod<$3.StreamConnectRequest, $3.PeerConnectNotification>(
      '/cln.Node/SubscribeConnect',
      ($3.StreamConnectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PeerConnectNotification.fromBuffer(value));
  static final _$subscribeCustomMsg = $grpc.ClientMethod<$3.StreamCustomMsgRequest, $3.CustomMsgNotification>(
      '/cln.Node/SubscribeCustomMsg',
      ($3.StreamCustomMsgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CustomMsgNotification.fromBuffer(value));

  NodeClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.GetinfoResponse> getinfo($3.GetinfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getinfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListpeersResponse> listPeers($3.ListpeersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPeers, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListfundsResponse> listFunds($3.ListfundsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFunds, request, options: options);
  }

  $grpc.ResponseFuture<$3.SendpayResponse> sendPay($3.SendpayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendPay, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListchannelsResponse> listChannels($3.ListchannelsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listChannels, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddgossipResponse> addGossip($3.AddgossipRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addGossip, request, options: options);
  }

  $grpc.ResponseFuture<$3.AddpsbtoutputResponse> addPsbtOutput($3.AddpsbtoutputRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPsbtOutput, request, options: options);
  }

  $grpc.ResponseFuture<$3.AutocleanonceResponse> autoCleanOnce($3.AutocleanonceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$autoCleanOnce, request, options: options);
  }

  $grpc.ResponseFuture<$3.AutocleanstatusResponse> autoCleanStatus($3.AutocleanstatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$autoCleanStatus, request, options: options);
  }

  $grpc.ResponseFuture<$3.CheckmessageResponse> checkMessage($3.CheckmessageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkMessage, request, options: options);
  }

  $grpc.ResponseFuture<$3.CloseResponse> close($3.CloseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$close, request, options: options);
  }

  $grpc.ResponseFuture<$3.ConnectResponse> connectPeer($3.ConnectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connectPeer, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateinvoiceResponse> createInvoice($3.CreateinvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.DatastoreResponse> datastore($3.DatastoreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$datastore, request, options: options);
  }

  $grpc.ResponseFuture<$3.DatastoreusageResponse> datastoreUsage($3.DatastoreusageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$datastoreUsage, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateonionResponse> createOnion($3.CreateonionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOnion, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeldatastoreResponse> delDatastore($3.DeldatastoreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delDatastore, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelinvoiceResponse> delInvoice($3.DelinvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.DevforgetchannelResponse> devForgetChannel($3.DevforgetchannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$devForgetChannel, request, options: options);
  }

  $grpc.ResponseFuture<$3.EmergencyrecoverResponse> emergencyRecover($3.EmergencyrecoverRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$emergencyRecover, request, options: options);
  }

  $grpc.ResponseFuture<$3.RecoverResponse> recover($3.RecoverRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recover, request, options: options);
  }

  $grpc.ResponseFuture<$3.RecoverchannelResponse> recoverChannel($3.RecoverchannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recoverChannel, request, options: options);
  }

  $grpc.ResponseFuture<$3.InvoiceResponse> invoice($3.InvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.InvoicerequestResponse> createInvoiceRequest($3.InvoicerequestRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInvoiceRequest, request, options: options);
  }

  $grpc.ResponseFuture<$3.DisableinvoicerequestResponse> disableInvoiceRequest($3.DisableinvoicerequestRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableInvoiceRequest, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListinvoicerequestsResponse> listInvoiceRequests($3.ListinvoicerequestsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInvoiceRequests, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListdatastoreResponse> listDatastore($3.ListdatastoreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDatastore, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListinvoicesResponse> listInvoices($3.ListinvoicesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInvoices, request, options: options);
  }

  $grpc.ResponseFuture<$3.SendonionResponse> sendOnion($3.SendonionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendOnion, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListsendpaysResponse> listSendPays($3.ListsendpaysRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSendPays, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListtransactionsResponse> listTransactions($3.ListtransactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listTransactions, request, options: options);
  }

  $grpc.ResponseFuture<$3.MakesecretResponse> makeSecret($3.MakesecretRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$makeSecret, request, options: options);
  }

  $grpc.ResponseFuture<$3.PayResponse> pay($3.PayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pay, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListnodesResponse> listNodes($3.ListnodesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listNodes, request, options: options);
  }

  $grpc.ResponseFuture<$3.WaitanyinvoiceResponse> waitAnyInvoice($3.WaitanyinvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$waitAnyInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.WaitinvoiceResponse> waitInvoice($3.WaitinvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$waitInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.WaitsendpayResponse> waitSendPay($3.WaitsendpayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$waitSendPay, request, options: options);
  }

  $grpc.ResponseFuture<$3.NewaddrResponse> newAddr($3.NewaddrRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newAddr, request, options: options);
  }

  $grpc.ResponseFuture<$3.WithdrawResponse> withdraw($3.WithdrawRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$withdraw, request, options: options);
  }

  $grpc.ResponseFuture<$3.KeysendResponse> keySend($3.KeysendRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$keySend, request, options: options);
  }

  $grpc.ResponseFuture<$3.FundpsbtResponse> fundPsbt($3.FundpsbtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fundPsbt, request, options: options);
  }

  $grpc.ResponseFuture<$3.SendpsbtResponse> sendPsbt($3.SendpsbtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendPsbt, request, options: options);
  }

  $grpc.ResponseFuture<$3.SignpsbtResponse> signPsbt($3.SignpsbtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signPsbt, request, options: options);
  }

  $grpc.ResponseFuture<$3.UtxopsbtResponse> utxoPsbt($3.UtxopsbtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$utxoPsbt, request, options: options);
  }

  $grpc.ResponseFuture<$3.TxdiscardResponse> txDiscard($3.TxdiscardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$txDiscard, request, options: options);
  }

  $grpc.ResponseFuture<$3.TxprepareResponse> txPrepare($3.TxprepareRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$txPrepare, request, options: options);
  }

  $grpc.ResponseFuture<$3.TxsendResponse> txSend($3.TxsendRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$txSend, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListpeerchannelsResponse> listPeerChannels($3.ListpeerchannelsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPeerChannels, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListclosedchannelsResponse> listClosedChannels($3.ListclosedchannelsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listClosedChannels, request, options: options);
  }

  $grpc.ResponseFuture<$3.DecodepayResponse> decodePay($3.DecodepayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$decodePay, request, options: options);
  }

  $grpc.ResponseFuture<$3.DecodeResponse> decode($3.DecodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$decode, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelpayResponse> delPay($3.DelpayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delPay, request, options: options);
  }

  $grpc.ResponseFuture<$3.DelforwardResponse> delForward($3.DelforwardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delForward, request, options: options);
  }

  $grpc.ResponseFuture<$3.DisableofferResponse> disableOffer($3.DisableofferRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disableOffer, request, options: options);
  }

  $grpc.ResponseFuture<$3.DisconnectResponse> disconnect($3.DisconnectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disconnect, request, options: options);
  }

  $grpc.ResponseFuture<$3.FeeratesResponse> feerates($3.FeeratesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$feerates, request, options: options);
  }

  $grpc.ResponseFuture<$3.FetchinvoiceResponse> fetchInvoice($3.FetchinvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.Fundchannel_cancelResponse> fundChannel_Cancel($3.Fundchannel_cancelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fundChannel_Cancel, request, options: options);
  }

  $grpc.ResponseFuture<$3.Fundchannel_completeResponse> fundChannel_Complete($3.Fundchannel_completeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fundChannel_Complete, request, options: options);
  }

  $grpc.ResponseFuture<$3.FundchannelResponse> fundChannel($3.FundchannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fundChannel, request, options: options);
  }

  $grpc.ResponseFuture<$3.Fundchannel_startResponse> fundChannel_Start($3.Fundchannel_startRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fundChannel_Start, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetlogResponse> getLog($3.GetlogRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLog, request, options: options);
  }

  $grpc.ResponseFuture<$3.FunderupdateResponse> funderUpdate($3.FunderupdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$funderUpdate, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetrouteResponse> getRoute($3.GetrouteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoute, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListforwardsResponse> listForwards($3.ListforwardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listForwards, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListoffersResponse> listOffers($3.ListoffersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listOffers, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListpaysResponse> listPays($3.ListpaysRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPays, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListhtlcsResponse> listHtlcs($3.ListhtlcsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listHtlcs, request, options: options);
  }

  $grpc.ResponseFuture<$3.MultifundchannelResponse> multiFundChannel($3.MultifundchannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$multiFundChannel, request, options: options);
  }

  $grpc.ResponseFuture<$3.MultiwithdrawResponse> multiWithdraw($3.MultiwithdrawRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$multiWithdraw, request, options: options);
  }

  $grpc.ResponseFuture<$3.OfferResponse> offer($3.OfferRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$offer, request, options: options);
  }

  $grpc.ResponseFuture<$3.Openchannel_abortResponse> openChannel_Abort($3.Openchannel_abortRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$openChannel_Abort, request, options: options);
  }

  $grpc.ResponseFuture<$3.Openchannel_bumpResponse> openChannel_Bump($3.Openchannel_bumpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$openChannel_Bump, request, options: options);
  }

  $grpc.ResponseFuture<$3.Openchannel_initResponse> openChannel_Init($3.Openchannel_initRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$openChannel_Init, request, options: options);
  }

  $grpc.ResponseFuture<$3.Openchannel_signedResponse> openChannel_Signed($3.Openchannel_signedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$openChannel_Signed, request, options: options);
  }

  $grpc.ResponseFuture<$3.Openchannel_updateResponse> openChannel_Update($3.Openchannel_updateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$openChannel_Update, request, options: options);
  }

  $grpc.ResponseFuture<$3.PingResponse> ping($3.PingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }

  $grpc.ResponseFuture<$3.PluginResponse> plugin($3.PluginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$plugin, request, options: options);
  }

  $grpc.ResponseFuture<$3.RenepaystatusResponse> renePayStatus($3.RenepaystatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$renePayStatus, request, options: options);
  }

  $grpc.ResponseFuture<$3.RenepayResponse> renePay($3.RenepayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$renePay, request, options: options);
  }

  $grpc.ResponseFuture<$3.ReserveinputsResponse> reserveInputs($3.ReserveinputsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reserveInputs, request, options: options);
  }

  $grpc.ResponseFuture<$3.SendcustommsgResponse> sendCustomMsg($3.SendcustommsgRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendCustomMsg, request, options: options);
  }

  $grpc.ResponseFuture<$3.SendinvoiceResponse> sendInvoice($3.SendinvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.SetchannelResponse> setChannel($3.SetchannelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setChannel, request, options: options);
  }

  $grpc.ResponseFuture<$3.SetconfigResponse> setConfig($3.SetconfigRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setConfig, request, options: options);
  }

  $grpc.ResponseFuture<$3.SetpsbtversionResponse> setPsbtVersion($3.SetpsbtversionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setPsbtVersion, request, options: options);
  }

  $grpc.ResponseFuture<$3.SigninvoiceResponse> signInvoice($3.SigninvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.SignmessageResponse> signMessage($3.SignmessageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signMessage, request, options: options);
  }

  $grpc.ResponseFuture<$3.Splice_initResponse> splice_Init($3.Splice_initRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$splice_Init, request, options: options);
  }

  $grpc.ResponseFuture<$3.Splice_signedResponse> splice_Signed($3.Splice_signedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$splice_Signed, request, options: options);
  }

  $grpc.ResponseFuture<$3.Splice_updateResponse> splice_Update($3.Splice_updateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$splice_Update, request, options: options);
  }

  $grpc.ResponseFuture<$3.UnreserveinputsResponse> unreserveInputs($3.UnreserveinputsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unreserveInputs, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpgradewalletResponse> upgradeWallet($3.UpgradewalletRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeWallet, request, options: options);
  }

  $grpc.ResponseFuture<$3.WaitblockheightResponse> waitBlockHeight($3.WaitblockheightRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$waitBlockHeight, request, options: options);
  }

  $grpc.ResponseFuture<$3.WaitResponse> wait($3.WaitRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$wait, request, options: options);
  }

  $grpc.ResponseFuture<$3.ListconfigsResponse> listConfigs($3.ListconfigsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listConfigs, request, options: options);
  }

  $grpc.ResponseFuture<$3.StopResponse> stop($3.StopRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stop, request, options: options);
  }

  $grpc.ResponseFuture<$3.HelpResponse> help($3.HelpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$help, request, options: options);
  }

  $grpc.ResponseFuture<$3.PreapprovekeysendResponse> preApproveKeysend($3.PreapprovekeysendRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$preApproveKeysend, request, options: options);
  }

  $grpc.ResponseFuture<$3.PreapproveinvoiceResponse> preApproveInvoice($3.PreapproveinvoiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$preApproveInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$3.StaticbackupResponse> staticBackup($3.StaticbackupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$staticBackup, request, options: options);
  }

  $grpc.ResponseFuture<$3.BkprchannelsapyResponse> bkprChannelsApy($3.BkprchannelsapyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bkprChannelsApy, request, options: options);
  }

  $grpc.ResponseFuture<$3.BkprdumpincomecsvResponse> bkprDumpIncomeCsv($3.BkprdumpincomecsvRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bkprDumpIncomeCsv, request, options: options);
  }

  $grpc.ResponseFuture<$3.BkprinspectResponse> bkprInspect($3.BkprinspectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bkprInspect, request, options: options);
  }

  $grpc.ResponseFuture<$3.BkprlistaccounteventsResponse> bkprListAccountEvents($3.BkprlistaccounteventsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bkprListAccountEvents, request, options: options);
  }

  $grpc.ResponseFuture<$3.BkprlistbalancesResponse> bkprListBalances($3.BkprlistbalancesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bkprListBalances, request, options: options);
  }

  $grpc.ResponseFuture<$3.BkprlistincomeResponse> bkprListIncome($3.BkprlistincomeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bkprListIncome, request, options: options);
  }

  $grpc.ResponseFuture<$3.BlacklistruneResponse> blacklistRune($3.BlacklistruneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$blacklistRune, request, options: options);
  }

  $grpc.ResponseFuture<$3.CheckruneResponse> checkRune($3.CheckruneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkRune, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateruneResponse> createRune($3.CreateruneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRune, request, options: options);
  }

  $grpc.ResponseFuture<$3.ShowrunesResponse> showRunes($3.ShowrunesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$showRunes, request, options: options);
  }

  $grpc.ResponseStream<$3.BlockAddedNotification> subscribeBlockAdded($3.StreamBlockAddedRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeBlockAdded, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$3.ChannelOpenFailedNotification> subscribeChannelOpenFailed($3.StreamChannelOpenFailedRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeChannelOpenFailed, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$3.ChannelOpenedNotification> subscribeChannelOpened($3.StreamChannelOpenedRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeChannelOpened, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$3.PeerConnectNotification> subscribeConnect($3.StreamConnectRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeConnect, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$3.CustomMsgNotification> subscribeCustomMsg($3.StreamCustomMsgRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeCustomMsg, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('cln.Node')
abstract class NodeServiceBase extends $grpc.Service {
  $core.String get $name => 'cln.Node';

  NodeServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetinfoRequest, $3.GetinfoResponse>(
        'Getinfo',
        getinfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetinfoRequest.fromBuffer(value),
        ($3.GetinfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListpeersRequest, $3.ListpeersResponse>(
        'ListPeers',
        listPeers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListpeersRequest.fromBuffer(value),
        ($3.ListpeersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListfundsRequest, $3.ListfundsResponse>(
        'ListFunds',
        listFunds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListfundsRequest.fromBuffer(value),
        ($3.ListfundsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SendpayRequest, $3.SendpayResponse>(
        'SendPay',
        sendPay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SendpayRequest.fromBuffer(value),
        ($3.SendpayResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListchannelsRequest, $3.ListchannelsResponse>(
        'ListChannels',
        listChannels_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListchannelsRequest.fromBuffer(value),
        ($3.ListchannelsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddgossipRequest, $3.AddgossipResponse>(
        'AddGossip',
        addGossip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddgossipRequest.fromBuffer(value),
        ($3.AddgossipResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AddpsbtoutputRequest, $3.AddpsbtoutputResponse>(
        'AddPsbtOutput',
        addPsbtOutput_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AddpsbtoutputRequest.fromBuffer(value),
        ($3.AddpsbtoutputResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AutocleanonceRequest, $3.AutocleanonceResponse>(
        'AutoCleanOnce',
        autoCleanOnce_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AutocleanonceRequest.fromBuffer(value),
        ($3.AutocleanonceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AutocleanstatusRequest, $3.AutocleanstatusResponse>(
        'AutoCleanStatus',
        autoCleanStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AutocleanstatusRequest.fromBuffer(value),
        ($3.AutocleanstatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CheckmessageRequest, $3.CheckmessageResponse>(
        'CheckMessage',
        checkMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CheckmessageRequest.fromBuffer(value),
        ($3.CheckmessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CloseRequest, $3.CloseResponse>(
        'Close',
        close_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CloseRequest.fromBuffer(value),
        ($3.CloseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ConnectRequest, $3.ConnectResponse>(
        'ConnectPeer',
        connectPeer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ConnectRequest.fromBuffer(value),
        ($3.ConnectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateinvoiceRequest, $3.CreateinvoiceResponse>(
        'CreateInvoice',
        createInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateinvoiceRequest.fromBuffer(value),
        ($3.CreateinvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DatastoreRequest, $3.DatastoreResponse>(
        'Datastore',
        datastore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DatastoreRequest.fromBuffer(value),
        ($3.DatastoreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DatastoreusageRequest, $3.DatastoreusageResponse>(
        'DatastoreUsage',
        datastoreUsage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DatastoreusageRequest.fromBuffer(value),
        ($3.DatastoreusageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateonionRequest, $3.CreateonionResponse>(
        'CreateOnion',
        createOnion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateonionRequest.fromBuffer(value),
        ($3.CreateonionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeldatastoreRequest, $3.DeldatastoreResponse>(
        'DelDatastore',
        delDatastore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeldatastoreRequest.fromBuffer(value),
        ($3.DeldatastoreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelinvoiceRequest, $3.DelinvoiceResponse>(
        'DelInvoice',
        delInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelinvoiceRequest.fromBuffer(value),
        ($3.DelinvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DevforgetchannelRequest, $3.DevforgetchannelResponse>(
        'DevForgetChannel',
        devForgetChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DevforgetchannelRequest.fromBuffer(value),
        ($3.DevforgetchannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.EmergencyrecoverRequest, $3.EmergencyrecoverResponse>(
        'EmergencyRecover',
        emergencyRecover_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.EmergencyrecoverRequest.fromBuffer(value),
        ($3.EmergencyrecoverResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RecoverRequest, $3.RecoverResponse>(
        'Recover',
        recover_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RecoverRequest.fromBuffer(value),
        ($3.RecoverResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RecoverchannelRequest, $3.RecoverchannelResponse>(
        'RecoverChannel',
        recoverChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RecoverchannelRequest.fromBuffer(value),
        ($3.RecoverchannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.InvoiceRequest, $3.InvoiceResponse>(
        'Invoice',
        invoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.InvoiceRequest.fromBuffer(value),
        ($3.InvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.InvoicerequestRequest, $3.InvoicerequestResponse>(
        'CreateInvoiceRequest',
        createInvoiceRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.InvoicerequestRequest.fromBuffer(value),
        ($3.InvoicerequestResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DisableinvoicerequestRequest, $3.DisableinvoicerequestResponse>(
        'DisableInvoiceRequest',
        disableInvoiceRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DisableinvoicerequestRequest.fromBuffer(value),
        ($3.DisableinvoicerequestResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListinvoicerequestsRequest, $3.ListinvoicerequestsResponse>(
        'ListInvoiceRequests',
        listInvoiceRequests_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListinvoicerequestsRequest.fromBuffer(value),
        ($3.ListinvoicerequestsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListdatastoreRequest, $3.ListdatastoreResponse>(
        'ListDatastore',
        listDatastore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListdatastoreRequest.fromBuffer(value),
        ($3.ListdatastoreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListinvoicesRequest, $3.ListinvoicesResponse>(
        'ListInvoices',
        listInvoices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListinvoicesRequest.fromBuffer(value),
        ($3.ListinvoicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SendonionRequest, $3.SendonionResponse>(
        'SendOnion',
        sendOnion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SendonionRequest.fromBuffer(value),
        ($3.SendonionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListsendpaysRequest, $3.ListsendpaysResponse>(
        'ListSendPays',
        listSendPays_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListsendpaysRequest.fromBuffer(value),
        ($3.ListsendpaysResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListtransactionsRequest, $3.ListtransactionsResponse>(
        'ListTransactions',
        listTransactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListtransactionsRequest.fromBuffer(value),
        ($3.ListtransactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.MakesecretRequest, $3.MakesecretResponse>(
        'MakeSecret',
        makeSecret_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.MakesecretRequest.fromBuffer(value),
        ($3.MakesecretResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.PayRequest, $3.PayResponse>(
        'Pay',
        pay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PayRequest.fromBuffer(value),
        ($3.PayResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListnodesRequest, $3.ListnodesResponse>(
        'ListNodes',
        listNodes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListnodesRequest.fromBuffer(value),
        ($3.ListnodesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WaitanyinvoiceRequest, $3.WaitanyinvoiceResponse>(
        'WaitAnyInvoice',
        waitAnyInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.WaitanyinvoiceRequest.fromBuffer(value),
        ($3.WaitanyinvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WaitinvoiceRequest, $3.WaitinvoiceResponse>(
        'WaitInvoice',
        waitInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.WaitinvoiceRequest.fromBuffer(value),
        ($3.WaitinvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WaitsendpayRequest, $3.WaitsendpayResponse>(
        'WaitSendPay',
        waitSendPay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.WaitsendpayRequest.fromBuffer(value),
        ($3.WaitsendpayResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.NewaddrRequest, $3.NewaddrResponse>(
        'NewAddr',
        newAddr_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.NewaddrRequest.fromBuffer(value),
        ($3.NewaddrResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WithdrawRequest, $3.WithdrawResponse>(
        'Withdraw',
        withdraw_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.WithdrawRequest.fromBuffer(value),
        ($3.WithdrawResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.KeysendRequest, $3.KeysendResponse>(
        'KeySend',
        keySend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.KeysendRequest.fromBuffer(value),
        ($3.KeysendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FundpsbtRequest, $3.FundpsbtResponse>(
        'FundPsbt',
        fundPsbt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.FundpsbtRequest.fromBuffer(value),
        ($3.FundpsbtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SendpsbtRequest, $3.SendpsbtResponse>(
        'SendPsbt',
        sendPsbt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SendpsbtRequest.fromBuffer(value),
        ($3.SendpsbtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SignpsbtRequest, $3.SignpsbtResponse>(
        'SignPsbt',
        signPsbt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SignpsbtRequest.fromBuffer(value),
        ($3.SignpsbtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UtxopsbtRequest, $3.UtxopsbtResponse>(
        'UtxoPsbt',
        utxoPsbt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UtxopsbtRequest.fromBuffer(value),
        ($3.UtxopsbtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TxdiscardRequest, $3.TxdiscardResponse>(
        'TxDiscard',
        txDiscard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TxdiscardRequest.fromBuffer(value),
        ($3.TxdiscardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TxprepareRequest, $3.TxprepareResponse>(
        'TxPrepare',
        txPrepare_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TxprepareRequest.fromBuffer(value),
        ($3.TxprepareResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TxsendRequest, $3.TxsendResponse>(
        'TxSend',
        txSend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TxsendRequest.fromBuffer(value),
        ($3.TxsendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListpeerchannelsRequest, $3.ListpeerchannelsResponse>(
        'ListPeerChannels',
        listPeerChannels_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListpeerchannelsRequest.fromBuffer(value),
        ($3.ListpeerchannelsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListclosedchannelsRequest, $3.ListclosedchannelsResponse>(
        'ListClosedChannels',
        listClosedChannels_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListclosedchannelsRequest.fromBuffer(value),
        ($3.ListclosedchannelsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DecodepayRequest, $3.DecodepayResponse>(
        'DecodePay',
        decodePay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DecodepayRequest.fromBuffer(value),
        ($3.DecodepayResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DecodeRequest, $3.DecodeResponse>(
        'Decode',
        decode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DecodeRequest.fromBuffer(value),
        ($3.DecodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelpayRequest, $3.DelpayResponse>(
        'DelPay',
        delPay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelpayRequest.fromBuffer(value),
        ($3.DelpayResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DelforwardRequest, $3.DelforwardResponse>(
        'DelForward',
        delForward_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DelforwardRequest.fromBuffer(value),
        ($3.DelforwardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DisableofferRequest, $3.DisableofferResponse>(
        'DisableOffer',
        disableOffer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DisableofferRequest.fromBuffer(value),
        ($3.DisableofferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DisconnectRequest, $3.DisconnectResponse>(
        'Disconnect',
        disconnect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DisconnectRequest.fromBuffer(value),
        ($3.DisconnectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FeeratesRequest, $3.FeeratesResponse>(
        'Feerates',
        feerates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.FeeratesRequest.fromBuffer(value),
        ($3.FeeratesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FetchinvoiceRequest, $3.FetchinvoiceResponse>(
        'FetchInvoice',
        fetchInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.FetchinvoiceRequest.fromBuffer(value),
        ($3.FetchinvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Fundchannel_cancelRequest, $3.Fundchannel_cancelResponse>(
        'FundChannel_Cancel',
        fundChannel_Cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Fundchannel_cancelRequest.fromBuffer(value),
        ($3.Fundchannel_cancelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Fundchannel_completeRequest, $3.Fundchannel_completeResponse>(
        'FundChannel_Complete',
        fundChannel_Complete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Fundchannel_completeRequest.fromBuffer(value),
        ($3.Fundchannel_completeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FundchannelRequest, $3.FundchannelResponse>(
        'FundChannel',
        fundChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.FundchannelRequest.fromBuffer(value),
        ($3.FundchannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Fundchannel_startRequest, $3.Fundchannel_startResponse>(
        'FundChannel_Start',
        fundChannel_Start_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Fundchannel_startRequest.fromBuffer(value),
        ($3.Fundchannel_startResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetlogRequest, $3.GetlogResponse>(
        'GetLog',
        getLog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetlogRequest.fromBuffer(value),
        ($3.GetlogResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FunderupdateRequest, $3.FunderupdateResponse>(
        'FunderUpdate',
        funderUpdate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.FunderupdateRequest.fromBuffer(value),
        ($3.FunderupdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetrouteRequest, $3.GetrouteResponse>(
        'GetRoute',
        getRoute_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetrouteRequest.fromBuffer(value),
        ($3.GetrouteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListforwardsRequest, $3.ListforwardsResponse>(
        'ListForwards',
        listForwards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListforwardsRequest.fromBuffer(value),
        ($3.ListforwardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListoffersRequest, $3.ListoffersResponse>(
        'ListOffers',
        listOffers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListoffersRequest.fromBuffer(value),
        ($3.ListoffersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListpaysRequest, $3.ListpaysResponse>(
        'ListPays',
        listPays_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListpaysRequest.fromBuffer(value),
        ($3.ListpaysResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListhtlcsRequest, $3.ListhtlcsResponse>(
        'ListHtlcs',
        listHtlcs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListhtlcsRequest.fromBuffer(value),
        ($3.ListhtlcsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.MultifundchannelRequest, $3.MultifundchannelResponse>(
        'MultiFundChannel',
        multiFundChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.MultifundchannelRequest.fromBuffer(value),
        ($3.MultifundchannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.MultiwithdrawRequest, $3.MultiwithdrawResponse>(
        'MultiWithdraw',
        multiWithdraw_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.MultiwithdrawRequest.fromBuffer(value),
        ($3.MultiwithdrawResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.OfferRequest, $3.OfferResponse>(
        'Offer',
        offer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.OfferRequest.fromBuffer(value),
        ($3.OfferResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Openchannel_abortRequest, $3.Openchannel_abortResponse>(
        'OpenChannel_Abort',
        openChannel_Abort_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Openchannel_abortRequest.fromBuffer(value),
        ($3.Openchannel_abortResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Openchannel_bumpRequest, $3.Openchannel_bumpResponse>(
        'OpenChannel_Bump',
        openChannel_Bump_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Openchannel_bumpRequest.fromBuffer(value),
        ($3.Openchannel_bumpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Openchannel_initRequest, $3.Openchannel_initResponse>(
        'OpenChannel_Init',
        openChannel_Init_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Openchannel_initRequest.fromBuffer(value),
        ($3.Openchannel_initResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Openchannel_signedRequest, $3.Openchannel_signedResponse>(
        'OpenChannel_Signed',
        openChannel_Signed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Openchannel_signedRequest.fromBuffer(value),
        ($3.Openchannel_signedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Openchannel_updateRequest, $3.Openchannel_updateResponse>(
        'OpenChannel_Update',
        openChannel_Update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Openchannel_updateRequest.fromBuffer(value),
        ($3.Openchannel_updateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.PingRequest, $3.PingResponse>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PingRequest.fromBuffer(value),
        ($3.PingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.PluginRequest, $3.PluginResponse>(
        'Plugin',
        plugin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PluginRequest.fromBuffer(value),
        ($3.PluginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RenepaystatusRequest, $3.RenepaystatusResponse>(
        'RenePayStatus',
        renePayStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RenepaystatusRequest.fromBuffer(value),
        ($3.RenepaystatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RenepayRequest, $3.RenepayResponse>(
        'RenePay',
        renePay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RenepayRequest.fromBuffer(value),
        ($3.RenepayResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ReserveinputsRequest, $3.ReserveinputsResponse>(
        'ReserveInputs',
        reserveInputs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ReserveinputsRequest.fromBuffer(value),
        ($3.ReserveinputsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SendcustommsgRequest, $3.SendcustommsgResponse>(
        'SendCustomMsg',
        sendCustomMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SendcustommsgRequest.fromBuffer(value),
        ($3.SendcustommsgResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SendinvoiceRequest, $3.SendinvoiceResponse>(
        'SendInvoice',
        sendInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SendinvoiceRequest.fromBuffer(value),
        ($3.SendinvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SetchannelRequest, $3.SetchannelResponse>(
        'SetChannel',
        setChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SetchannelRequest.fromBuffer(value),
        ($3.SetchannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SetconfigRequest, $3.SetconfigResponse>(
        'SetConfig',
        setConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SetconfigRequest.fromBuffer(value),
        ($3.SetconfigResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SetpsbtversionRequest, $3.SetpsbtversionResponse>(
        'SetPsbtVersion',
        setPsbtVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SetpsbtversionRequest.fromBuffer(value),
        ($3.SetpsbtversionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SigninvoiceRequest, $3.SigninvoiceResponse>(
        'SignInvoice',
        signInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SigninvoiceRequest.fromBuffer(value),
        ($3.SigninvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SignmessageRequest, $3.SignmessageResponse>(
        'SignMessage',
        signMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SignmessageRequest.fromBuffer(value),
        ($3.SignmessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Splice_initRequest, $3.Splice_initResponse>(
        'Splice_Init',
        splice_Init_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Splice_initRequest.fromBuffer(value),
        ($3.Splice_initResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Splice_signedRequest, $3.Splice_signedResponse>(
        'Splice_Signed',
        splice_Signed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Splice_signedRequest.fromBuffer(value),
        ($3.Splice_signedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Splice_updateRequest, $3.Splice_updateResponse>(
        'Splice_Update',
        splice_Update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Splice_updateRequest.fromBuffer(value),
        ($3.Splice_updateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UnreserveinputsRequest, $3.UnreserveinputsResponse>(
        'UnreserveInputs',
        unreserveInputs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UnreserveinputsRequest.fromBuffer(value),
        ($3.UnreserveinputsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpgradewalletRequest, $3.UpgradewalletResponse>(
        'UpgradeWallet',
        upgradeWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpgradewalletRequest.fromBuffer(value),
        ($3.UpgradewalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WaitblockheightRequest, $3.WaitblockheightResponse>(
        'WaitBlockHeight',
        waitBlockHeight_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.WaitblockheightRequest.fromBuffer(value),
        ($3.WaitblockheightResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WaitRequest, $3.WaitResponse>(
        'Wait',
        wait_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.WaitRequest.fromBuffer(value),
        ($3.WaitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ListconfigsRequest, $3.ListconfigsResponse>(
        'ListConfigs',
        listConfigs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListconfigsRequest.fromBuffer(value),
        ($3.ListconfigsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StopRequest, $3.StopResponse>(
        'Stop',
        stop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.StopRequest.fromBuffer(value),
        ($3.StopResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.HelpRequest, $3.HelpResponse>(
        'Help',
        help_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.HelpRequest.fromBuffer(value),
        ($3.HelpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.PreapprovekeysendRequest, $3.PreapprovekeysendResponse>(
        'PreApproveKeysend',
        preApproveKeysend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PreapprovekeysendRequest.fromBuffer(value),
        ($3.PreapprovekeysendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.PreapproveinvoiceRequest, $3.PreapproveinvoiceResponse>(
        'PreApproveInvoice',
        preApproveInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PreapproveinvoiceRequest.fromBuffer(value),
        ($3.PreapproveinvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StaticbackupRequest, $3.StaticbackupResponse>(
        'StaticBackup',
        staticBackup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.StaticbackupRequest.fromBuffer(value),
        ($3.StaticbackupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BkprchannelsapyRequest, $3.BkprchannelsapyResponse>(
        'BkprChannelsApy',
        bkprChannelsApy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.BkprchannelsapyRequest.fromBuffer(value),
        ($3.BkprchannelsapyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BkprdumpincomecsvRequest, $3.BkprdumpincomecsvResponse>(
        'BkprDumpIncomeCsv',
        bkprDumpIncomeCsv_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.BkprdumpincomecsvRequest.fromBuffer(value),
        ($3.BkprdumpincomecsvResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BkprinspectRequest, $3.BkprinspectResponse>(
        'BkprInspect',
        bkprInspect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.BkprinspectRequest.fromBuffer(value),
        ($3.BkprinspectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BkprlistaccounteventsRequest, $3.BkprlistaccounteventsResponse>(
        'BkprListAccountEvents',
        bkprListAccountEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.BkprlistaccounteventsRequest.fromBuffer(value),
        ($3.BkprlistaccounteventsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BkprlistbalancesRequest, $3.BkprlistbalancesResponse>(
        'BkprListBalances',
        bkprListBalances_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.BkprlistbalancesRequest.fromBuffer(value),
        ($3.BkprlistbalancesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BkprlistincomeRequest, $3.BkprlistincomeResponse>(
        'BkprListIncome',
        bkprListIncome_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.BkprlistincomeRequest.fromBuffer(value),
        ($3.BkprlistincomeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BlacklistruneRequest, $3.BlacklistruneResponse>(
        'BlacklistRune',
        blacklistRune_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.BlacklistruneRequest.fromBuffer(value),
        ($3.BlacklistruneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CheckruneRequest, $3.CheckruneResponse>(
        'CheckRune',
        checkRune_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CheckruneRequest.fromBuffer(value),
        ($3.CheckruneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateruneRequest, $3.CreateruneResponse>(
        'CreateRune',
        createRune_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateruneRequest.fromBuffer(value),
        ($3.CreateruneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ShowrunesRequest, $3.ShowrunesResponse>(
        'ShowRunes',
        showRunes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ShowrunesRequest.fromBuffer(value),
        ($3.ShowrunesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StreamBlockAddedRequest, $3.BlockAddedNotification>(
        'SubscribeBlockAdded',
        subscribeBlockAdded_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.StreamBlockAddedRequest.fromBuffer(value),
        ($3.BlockAddedNotification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StreamChannelOpenFailedRequest, $3.ChannelOpenFailedNotification>(
        'SubscribeChannelOpenFailed',
        subscribeChannelOpenFailed_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.StreamChannelOpenFailedRequest.fromBuffer(value),
        ($3.ChannelOpenFailedNotification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StreamChannelOpenedRequest, $3.ChannelOpenedNotification>(
        'SubscribeChannelOpened',
        subscribeChannelOpened_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.StreamChannelOpenedRequest.fromBuffer(value),
        ($3.ChannelOpenedNotification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StreamConnectRequest, $3.PeerConnectNotification>(
        'SubscribeConnect',
        subscribeConnect_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.StreamConnectRequest.fromBuffer(value),
        ($3.PeerConnectNotification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StreamCustomMsgRequest, $3.CustomMsgNotification>(
        'SubscribeCustomMsg',
        subscribeCustomMsg_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.StreamCustomMsgRequest.fromBuffer(value),
        ($3.CustomMsgNotification value) => value.writeToBuffer()));
  }

  $async.Future<$3.GetinfoResponse> getinfo_Pre($grpc.ServiceCall $call, $async.Future<$3.GetinfoRequest> $request) async {
    return getinfo($call, await $request);
  }

  $async.Future<$3.ListpeersResponse> listPeers_Pre($grpc.ServiceCall $call, $async.Future<$3.ListpeersRequest> $request) async {
    return listPeers($call, await $request);
  }

  $async.Future<$3.ListfundsResponse> listFunds_Pre($grpc.ServiceCall $call, $async.Future<$3.ListfundsRequest> $request) async {
    return listFunds($call, await $request);
  }

  $async.Future<$3.SendpayResponse> sendPay_Pre($grpc.ServiceCall $call, $async.Future<$3.SendpayRequest> $request) async {
    return sendPay($call, await $request);
  }

  $async.Future<$3.ListchannelsResponse> listChannels_Pre($grpc.ServiceCall $call, $async.Future<$3.ListchannelsRequest> $request) async {
    return listChannels($call, await $request);
  }

  $async.Future<$3.AddgossipResponse> addGossip_Pre($grpc.ServiceCall $call, $async.Future<$3.AddgossipRequest> $request) async {
    return addGossip($call, await $request);
  }

  $async.Future<$3.AddpsbtoutputResponse> addPsbtOutput_Pre($grpc.ServiceCall $call, $async.Future<$3.AddpsbtoutputRequest> $request) async {
    return addPsbtOutput($call, await $request);
  }

  $async.Future<$3.AutocleanonceResponse> autoCleanOnce_Pre($grpc.ServiceCall $call, $async.Future<$3.AutocleanonceRequest> $request) async {
    return autoCleanOnce($call, await $request);
  }

  $async.Future<$3.AutocleanstatusResponse> autoCleanStatus_Pre($grpc.ServiceCall $call, $async.Future<$3.AutocleanstatusRequest> $request) async {
    return autoCleanStatus($call, await $request);
  }

  $async.Future<$3.CheckmessageResponse> checkMessage_Pre($grpc.ServiceCall $call, $async.Future<$3.CheckmessageRequest> $request) async {
    return checkMessage($call, await $request);
  }

  $async.Future<$3.CloseResponse> close_Pre($grpc.ServiceCall $call, $async.Future<$3.CloseRequest> $request) async {
    return close($call, await $request);
  }

  $async.Future<$3.ConnectResponse> connectPeer_Pre($grpc.ServiceCall $call, $async.Future<$3.ConnectRequest> $request) async {
    return connectPeer($call, await $request);
  }

  $async.Future<$3.CreateinvoiceResponse> createInvoice_Pre($grpc.ServiceCall $call, $async.Future<$3.CreateinvoiceRequest> $request) async {
    return createInvoice($call, await $request);
  }

  $async.Future<$3.DatastoreResponse> datastore_Pre($grpc.ServiceCall $call, $async.Future<$3.DatastoreRequest> $request) async {
    return datastore($call, await $request);
  }

  $async.Future<$3.DatastoreusageResponse> datastoreUsage_Pre($grpc.ServiceCall $call, $async.Future<$3.DatastoreusageRequest> $request) async {
    return datastoreUsage($call, await $request);
  }

  $async.Future<$3.CreateonionResponse> createOnion_Pre($grpc.ServiceCall $call, $async.Future<$3.CreateonionRequest> $request) async {
    return createOnion($call, await $request);
  }

  $async.Future<$3.DeldatastoreResponse> delDatastore_Pre($grpc.ServiceCall $call, $async.Future<$3.DeldatastoreRequest> $request) async {
    return delDatastore($call, await $request);
  }

  $async.Future<$3.DelinvoiceResponse> delInvoice_Pre($grpc.ServiceCall $call, $async.Future<$3.DelinvoiceRequest> $request) async {
    return delInvoice($call, await $request);
  }

  $async.Future<$3.DevforgetchannelResponse> devForgetChannel_Pre($grpc.ServiceCall $call, $async.Future<$3.DevforgetchannelRequest> $request) async {
    return devForgetChannel($call, await $request);
  }

  $async.Future<$3.EmergencyrecoverResponse> emergencyRecover_Pre($grpc.ServiceCall $call, $async.Future<$3.EmergencyrecoverRequest> $request) async {
    return emergencyRecover($call, await $request);
  }

  $async.Future<$3.RecoverResponse> recover_Pre($grpc.ServiceCall $call, $async.Future<$3.RecoverRequest> $request) async {
    return recover($call, await $request);
  }

  $async.Future<$3.RecoverchannelResponse> recoverChannel_Pre($grpc.ServiceCall $call, $async.Future<$3.RecoverchannelRequest> $request) async {
    return recoverChannel($call, await $request);
  }

  $async.Future<$3.InvoiceResponse> invoice_Pre($grpc.ServiceCall $call, $async.Future<$3.InvoiceRequest> $request) async {
    return invoice($call, await $request);
  }

  $async.Future<$3.InvoicerequestResponse> createInvoiceRequest_Pre($grpc.ServiceCall $call, $async.Future<$3.InvoicerequestRequest> $request) async {
    return createInvoiceRequest($call, await $request);
  }

  $async.Future<$3.DisableinvoicerequestResponse> disableInvoiceRequest_Pre($grpc.ServiceCall $call, $async.Future<$3.DisableinvoicerequestRequest> $request) async {
    return disableInvoiceRequest($call, await $request);
  }

  $async.Future<$3.ListinvoicerequestsResponse> listInvoiceRequests_Pre($grpc.ServiceCall $call, $async.Future<$3.ListinvoicerequestsRequest> $request) async {
    return listInvoiceRequests($call, await $request);
  }

  $async.Future<$3.ListdatastoreResponse> listDatastore_Pre($grpc.ServiceCall $call, $async.Future<$3.ListdatastoreRequest> $request) async {
    return listDatastore($call, await $request);
  }

  $async.Future<$3.ListinvoicesResponse> listInvoices_Pre($grpc.ServiceCall $call, $async.Future<$3.ListinvoicesRequest> $request) async {
    return listInvoices($call, await $request);
  }

  $async.Future<$3.SendonionResponse> sendOnion_Pre($grpc.ServiceCall $call, $async.Future<$3.SendonionRequest> $request) async {
    return sendOnion($call, await $request);
  }

  $async.Future<$3.ListsendpaysResponse> listSendPays_Pre($grpc.ServiceCall $call, $async.Future<$3.ListsendpaysRequest> $request) async {
    return listSendPays($call, await $request);
  }

  $async.Future<$3.ListtransactionsResponse> listTransactions_Pre($grpc.ServiceCall $call, $async.Future<$3.ListtransactionsRequest> $request) async {
    return listTransactions($call, await $request);
  }

  $async.Future<$3.MakesecretResponse> makeSecret_Pre($grpc.ServiceCall $call, $async.Future<$3.MakesecretRequest> $request) async {
    return makeSecret($call, await $request);
  }

  $async.Future<$3.PayResponse> pay_Pre($grpc.ServiceCall $call, $async.Future<$3.PayRequest> $request) async {
    return pay($call, await $request);
  }

  $async.Future<$3.ListnodesResponse> listNodes_Pre($grpc.ServiceCall $call, $async.Future<$3.ListnodesRequest> $request) async {
    return listNodes($call, await $request);
  }

  $async.Future<$3.WaitanyinvoiceResponse> waitAnyInvoice_Pre($grpc.ServiceCall $call, $async.Future<$3.WaitanyinvoiceRequest> $request) async {
    return waitAnyInvoice($call, await $request);
  }

  $async.Future<$3.WaitinvoiceResponse> waitInvoice_Pre($grpc.ServiceCall $call, $async.Future<$3.WaitinvoiceRequest> $request) async {
    return waitInvoice($call, await $request);
  }

  $async.Future<$3.WaitsendpayResponse> waitSendPay_Pre($grpc.ServiceCall $call, $async.Future<$3.WaitsendpayRequest> $request) async {
    return waitSendPay($call, await $request);
  }

  $async.Future<$3.NewaddrResponse> newAddr_Pre($grpc.ServiceCall $call, $async.Future<$3.NewaddrRequest> $request) async {
    return newAddr($call, await $request);
  }

  $async.Future<$3.WithdrawResponse> withdraw_Pre($grpc.ServiceCall $call, $async.Future<$3.WithdrawRequest> $request) async {
    return withdraw($call, await $request);
  }

  $async.Future<$3.KeysendResponse> keySend_Pre($grpc.ServiceCall $call, $async.Future<$3.KeysendRequest> $request) async {
    return keySend($call, await $request);
  }

  $async.Future<$3.FundpsbtResponse> fundPsbt_Pre($grpc.ServiceCall $call, $async.Future<$3.FundpsbtRequest> $request) async {
    return fundPsbt($call, await $request);
  }

  $async.Future<$3.SendpsbtResponse> sendPsbt_Pre($grpc.ServiceCall $call, $async.Future<$3.SendpsbtRequest> $request) async {
    return sendPsbt($call, await $request);
  }

  $async.Future<$3.SignpsbtResponse> signPsbt_Pre($grpc.ServiceCall $call, $async.Future<$3.SignpsbtRequest> $request) async {
    return signPsbt($call, await $request);
  }

  $async.Future<$3.UtxopsbtResponse> utxoPsbt_Pre($grpc.ServiceCall $call, $async.Future<$3.UtxopsbtRequest> $request) async {
    return utxoPsbt($call, await $request);
  }

  $async.Future<$3.TxdiscardResponse> txDiscard_Pre($grpc.ServiceCall $call, $async.Future<$3.TxdiscardRequest> $request) async {
    return txDiscard($call, await $request);
  }

  $async.Future<$3.TxprepareResponse> txPrepare_Pre($grpc.ServiceCall $call, $async.Future<$3.TxprepareRequest> $request) async {
    return txPrepare($call, await $request);
  }

  $async.Future<$3.TxsendResponse> txSend_Pre($grpc.ServiceCall $call, $async.Future<$3.TxsendRequest> $request) async {
    return txSend($call, await $request);
  }

  $async.Future<$3.ListpeerchannelsResponse> listPeerChannels_Pre($grpc.ServiceCall $call, $async.Future<$3.ListpeerchannelsRequest> $request) async {
    return listPeerChannels($call, await $request);
  }

  $async.Future<$3.ListclosedchannelsResponse> listClosedChannels_Pre($grpc.ServiceCall $call, $async.Future<$3.ListclosedchannelsRequest> $request) async {
    return listClosedChannels($call, await $request);
  }

  $async.Future<$3.DecodepayResponse> decodePay_Pre($grpc.ServiceCall $call, $async.Future<$3.DecodepayRequest> $request) async {
    return decodePay($call, await $request);
  }

  $async.Future<$3.DecodeResponse> decode_Pre($grpc.ServiceCall $call, $async.Future<$3.DecodeRequest> $request) async {
    return decode($call, await $request);
  }

  $async.Future<$3.DelpayResponse> delPay_Pre($grpc.ServiceCall $call, $async.Future<$3.DelpayRequest> $request) async {
    return delPay($call, await $request);
  }

  $async.Future<$3.DelforwardResponse> delForward_Pre($grpc.ServiceCall $call, $async.Future<$3.DelforwardRequest> $request) async {
    return delForward($call, await $request);
  }

  $async.Future<$3.DisableofferResponse> disableOffer_Pre($grpc.ServiceCall $call, $async.Future<$3.DisableofferRequest> $request) async {
    return disableOffer($call, await $request);
  }

  $async.Future<$3.DisconnectResponse> disconnect_Pre($grpc.ServiceCall $call, $async.Future<$3.DisconnectRequest> $request) async {
    return disconnect($call, await $request);
  }

  $async.Future<$3.FeeratesResponse> feerates_Pre($grpc.ServiceCall $call, $async.Future<$3.FeeratesRequest> $request) async {
    return feerates($call, await $request);
  }

  $async.Future<$3.FetchinvoiceResponse> fetchInvoice_Pre($grpc.ServiceCall $call, $async.Future<$3.FetchinvoiceRequest> $request) async {
    return fetchInvoice($call, await $request);
  }

  $async.Future<$3.Fundchannel_cancelResponse> fundChannel_Cancel_Pre($grpc.ServiceCall $call, $async.Future<$3.Fundchannel_cancelRequest> $request) async {
    return fundChannel_Cancel($call, await $request);
  }

  $async.Future<$3.Fundchannel_completeResponse> fundChannel_Complete_Pre($grpc.ServiceCall $call, $async.Future<$3.Fundchannel_completeRequest> $request) async {
    return fundChannel_Complete($call, await $request);
  }

  $async.Future<$3.FundchannelResponse> fundChannel_Pre($grpc.ServiceCall $call, $async.Future<$3.FundchannelRequest> $request) async {
    return fundChannel($call, await $request);
  }

  $async.Future<$3.Fundchannel_startResponse> fundChannel_Start_Pre($grpc.ServiceCall $call, $async.Future<$3.Fundchannel_startRequest> $request) async {
    return fundChannel_Start($call, await $request);
  }

  $async.Future<$3.GetlogResponse> getLog_Pre($grpc.ServiceCall $call, $async.Future<$3.GetlogRequest> $request) async {
    return getLog($call, await $request);
  }

  $async.Future<$3.FunderupdateResponse> funderUpdate_Pre($grpc.ServiceCall $call, $async.Future<$3.FunderupdateRequest> $request) async {
    return funderUpdate($call, await $request);
  }

  $async.Future<$3.GetrouteResponse> getRoute_Pre($grpc.ServiceCall $call, $async.Future<$3.GetrouteRequest> $request) async {
    return getRoute($call, await $request);
  }

  $async.Future<$3.ListforwardsResponse> listForwards_Pre($grpc.ServiceCall $call, $async.Future<$3.ListforwardsRequest> $request) async {
    return listForwards($call, await $request);
  }

  $async.Future<$3.ListoffersResponse> listOffers_Pre($grpc.ServiceCall $call, $async.Future<$3.ListoffersRequest> $request) async {
    return listOffers($call, await $request);
  }

  $async.Future<$3.ListpaysResponse> listPays_Pre($grpc.ServiceCall $call, $async.Future<$3.ListpaysRequest> $request) async {
    return listPays($call, await $request);
  }

  $async.Future<$3.ListhtlcsResponse> listHtlcs_Pre($grpc.ServiceCall $call, $async.Future<$3.ListhtlcsRequest> $request) async {
    return listHtlcs($call, await $request);
  }

  $async.Future<$3.MultifundchannelResponse> multiFundChannel_Pre($grpc.ServiceCall $call, $async.Future<$3.MultifundchannelRequest> $request) async {
    return multiFundChannel($call, await $request);
  }

  $async.Future<$3.MultiwithdrawResponse> multiWithdraw_Pre($grpc.ServiceCall $call, $async.Future<$3.MultiwithdrawRequest> $request) async {
    return multiWithdraw($call, await $request);
  }

  $async.Future<$3.OfferResponse> offer_Pre($grpc.ServiceCall $call, $async.Future<$3.OfferRequest> $request) async {
    return offer($call, await $request);
  }

  $async.Future<$3.Openchannel_abortResponse> openChannel_Abort_Pre($grpc.ServiceCall $call, $async.Future<$3.Openchannel_abortRequest> $request) async {
    return openChannel_Abort($call, await $request);
  }

  $async.Future<$3.Openchannel_bumpResponse> openChannel_Bump_Pre($grpc.ServiceCall $call, $async.Future<$3.Openchannel_bumpRequest> $request) async {
    return openChannel_Bump($call, await $request);
  }

  $async.Future<$3.Openchannel_initResponse> openChannel_Init_Pre($grpc.ServiceCall $call, $async.Future<$3.Openchannel_initRequest> $request) async {
    return openChannel_Init($call, await $request);
  }

  $async.Future<$3.Openchannel_signedResponse> openChannel_Signed_Pre($grpc.ServiceCall $call, $async.Future<$3.Openchannel_signedRequest> $request) async {
    return openChannel_Signed($call, await $request);
  }

  $async.Future<$3.Openchannel_updateResponse> openChannel_Update_Pre($grpc.ServiceCall $call, $async.Future<$3.Openchannel_updateRequest> $request) async {
    return openChannel_Update($call, await $request);
  }

  $async.Future<$3.PingResponse> ping_Pre($grpc.ServiceCall $call, $async.Future<$3.PingRequest> $request) async {
    return ping($call, await $request);
  }

  $async.Future<$3.PluginResponse> plugin_Pre($grpc.ServiceCall $call, $async.Future<$3.PluginRequest> $request) async {
    return plugin($call, await $request);
  }

  $async.Future<$3.RenepaystatusResponse> renePayStatus_Pre($grpc.ServiceCall $call, $async.Future<$3.RenepaystatusRequest> $request) async {
    return renePayStatus($call, await $request);
  }

  $async.Future<$3.RenepayResponse> renePay_Pre($grpc.ServiceCall $call, $async.Future<$3.RenepayRequest> $request) async {
    return renePay($call, await $request);
  }

  $async.Future<$3.ReserveinputsResponse> reserveInputs_Pre($grpc.ServiceCall $call, $async.Future<$3.ReserveinputsRequest> $request) async {
    return reserveInputs($call, await $request);
  }

  $async.Future<$3.SendcustommsgResponse> sendCustomMsg_Pre($grpc.ServiceCall $call, $async.Future<$3.SendcustommsgRequest> $request) async {
    return sendCustomMsg($call, await $request);
  }

  $async.Future<$3.SendinvoiceResponse> sendInvoice_Pre($grpc.ServiceCall $call, $async.Future<$3.SendinvoiceRequest> $request) async {
    return sendInvoice($call, await $request);
  }

  $async.Future<$3.SetchannelResponse> setChannel_Pre($grpc.ServiceCall $call, $async.Future<$3.SetchannelRequest> $request) async {
    return setChannel($call, await $request);
  }

  $async.Future<$3.SetconfigResponse> setConfig_Pre($grpc.ServiceCall $call, $async.Future<$3.SetconfigRequest> $request) async {
    return setConfig($call, await $request);
  }

  $async.Future<$3.SetpsbtversionResponse> setPsbtVersion_Pre($grpc.ServiceCall $call, $async.Future<$3.SetpsbtversionRequest> $request) async {
    return setPsbtVersion($call, await $request);
  }

  $async.Future<$3.SigninvoiceResponse> signInvoice_Pre($grpc.ServiceCall $call, $async.Future<$3.SigninvoiceRequest> $request) async {
    return signInvoice($call, await $request);
  }

  $async.Future<$3.SignmessageResponse> signMessage_Pre($grpc.ServiceCall $call, $async.Future<$3.SignmessageRequest> $request) async {
    return signMessage($call, await $request);
  }

  $async.Future<$3.Splice_initResponse> splice_Init_Pre($grpc.ServiceCall $call, $async.Future<$3.Splice_initRequest> $request) async {
    return splice_Init($call, await $request);
  }

  $async.Future<$3.Splice_signedResponse> splice_Signed_Pre($grpc.ServiceCall $call, $async.Future<$3.Splice_signedRequest> $request) async {
    return splice_Signed($call, await $request);
  }

  $async.Future<$3.Splice_updateResponse> splice_Update_Pre($grpc.ServiceCall $call, $async.Future<$3.Splice_updateRequest> $request) async {
    return splice_Update($call, await $request);
  }

  $async.Future<$3.UnreserveinputsResponse> unreserveInputs_Pre($grpc.ServiceCall $call, $async.Future<$3.UnreserveinputsRequest> $request) async {
    return unreserveInputs($call, await $request);
  }

  $async.Future<$3.UpgradewalletResponse> upgradeWallet_Pre($grpc.ServiceCall $call, $async.Future<$3.UpgradewalletRequest> $request) async {
    return upgradeWallet($call, await $request);
  }

  $async.Future<$3.WaitblockheightResponse> waitBlockHeight_Pre($grpc.ServiceCall $call, $async.Future<$3.WaitblockheightRequest> $request) async {
    return waitBlockHeight($call, await $request);
  }

  $async.Future<$3.WaitResponse> wait_Pre($grpc.ServiceCall $call, $async.Future<$3.WaitRequest> $request) async {
    return wait($call, await $request);
  }

  $async.Future<$3.ListconfigsResponse> listConfigs_Pre($grpc.ServiceCall $call, $async.Future<$3.ListconfigsRequest> $request) async {
    return listConfigs($call, await $request);
  }

  $async.Future<$3.StopResponse> stop_Pre($grpc.ServiceCall $call, $async.Future<$3.StopRequest> $request) async {
    return stop($call, await $request);
  }

  $async.Future<$3.HelpResponse> help_Pre($grpc.ServiceCall $call, $async.Future<$3.HelpRequest> $request) async {
    return help($call, await $request);
  }

  $async.Future<$3.PreapprovekeysendResponse> preApproveKeysend_Pre($grpc.ServiceCall $call, $async.Future<$3.PreapprovekeysendRequest> $request) async {
    return preApproveKeysend($call, await $request);
  }

  $async.Future<$3.PreapproveinvoiceResponse> preApproveInvoice_Pre($grpc.ServiceCall $call, $async.Future<$3.PreapproveinvoiceRequest> $request) async {
    return preApproveInvoice($call, await $request);
  }

  $async.Future<$3.StaticbackupResponse> staticBackup_Pre($grpc.ServiceCall $call, $async.Future<$3.StaticbackupRequest> $request) async {
    return staticBackup($call, await $request);
  }

  $async.Future<$3.BkprchannelsapyResponse> bkprChannelsApy_Pre($grpc.ServiceCall $call, $async.Future<$3.BkprchannelsapyRequest> $request) async {
    return bkprChannelsApy($call, await $request);
  }

  $async.Future<$3.BkprdumpincomecsvResponse> bkprDumpIncomeCsv_Pre($grpc.ServiceCall $call, $async.Future<$3.BkprdumpincomecsvRequest> $request) async {
    return bkprDumpIncomeCsv($call, await $request);
  }

  $async.Future<$3.BkprinspectResponse> bkprInspect_Pre($grpc.ServiceCall $call, $async.Future<$3.BkprinspectRequest> $request) async {
    return bkprInspect($call, await $request);
  }

  $async.Future<$3.BkprlistaccounteventsResponse> bkprListAccountEvents_Pre($grpc.ServiceCall $call, $async.Future<$3.BkprlistaccounteventsRequest> $request) async {
    return bkprListAccountEvents($call, await $request);
  }

  $async.Future<$3.BkprlistbalancesResponse> bkprListBalances_Pre($grpc.ServiceCall $call, $async.Future<$3.BkprlistbalancesRequest> $request) async {
    return bkprListBalances($call, await $request);
  }

  $async.Future<$3.BkprlistincomeResponse> bkprListIncome_Pre($grpc.ServiceCall $call, $async.Future<$3.BkprlistincomeRequest> $request) async {
    return bkprListIncome($call, await $request);
  }

  $async.Future<$3.BlacklistruneResponse> blacklistRune_Pre($grpc.ServiceCall $call, $async.Future<$3.BlacklistruneRequest> $request) async {
    return blacklistRune($call, await $request);
  }

  $async.Future<$3.CheckruneResponse> checkRune_Pre($grpc.ServiceCall $call, $async.Future<$3.CheckruneRequest> $request) async {
    return checkRune($call, await $request);
  }

  $async.Future<$3.CreateruneResponse> createRune_Pre($grpc.ServiceCall $call, $async.Future<$3.CreateruneRequest> $request) async {
    return createRune($call, await $request);
  }

  $async.Future<$3.ShowrunesResponse> showRunes_Pre($grpc.ServiceCall $call, $async.Future<$3.ShowrunesRequest> $request) async {
    return showRunes($call, await $request);
  }

  $async.Stream<$3.BlockAddedNotification> subscribeBlockAdded_Pre($grpc.ServiceCall $call, $async.Future<$3.StreamBlockAddedRequest> $request) async* {
    yield* subscribeBlockAdded($call, await $request);
  }

  $async.Stream<$3.ChannelOpenFailedNotification> subscribeChannelOpenFailed_Pre($grpc.ServiceCall $call, $async.Future<$3.StreamChannelOpenFailedRequest> $request) async* {
    yield* subscribeChannelOpenFailed($call, await $request);
  }

  $async.Stream<$3.ChannelOpenedNotification> subscribeChannelOpened_Pre($grpc.ServiceCall $call, $async.Future<$3.StreamChannelOpenedRequest> $request) async* {
    yield* subscribeChannelOpened($call, await $request);
  }

  $async.Stream<$3.PeerConnectNotification> subscribeConnect_Pre($grpc.ServiceCall $call, $async.Future<$3.StreamConnectRequest> $request) async* {
    yield* subscribeConnect($call, await $request);
  }

  $async.Stream<$3.CustomMsgNotification> subscribeCustomMsg_Pre($grpc.ServiceCall $call, $async.Future<$3.StreamCustomMsgRequest> $request) async* {
    yield* subscribeCustomMsg($call, await $request);
  }

  $async.Future<$3.GetinfoResponse> getinfo($grpc.ServiceCall call, $3.GetinfoRequest request);
  $async.Future<$3.ListpeersResponse> listPeers($grpc.ServiceCall call, $3.ListpeersRequest request);
  $async.Future<$3.ListfundsResponse> listFunds($grpc.ServiceCall call, $3.ListfundsRequest request);
  $async.Future<$3.SendpayResponse> sendPay($grpc.ServiceCall call, $3.SendpayRequest request);
  $async.Future<$3.ListchannelsResponse> listChannels($grpc.ServiceCall call, $3.ListchannelsRequest request);
  $async.Future<$3.AddgossipResponse> addGossip($grpc.ServiceCall call, $3.AddgossipRequest request);
  $async.Future<$3.AddpsbtoutputResponse> addPsbtOutput($grpc.ServiceCall call, $3.AddpsbtoutputRequest request);
  $async.Future<$3.AutocleanonceResponse> autoCleanOnce($grpc.ServiceCall call, $3.AutocleanonceRequest request);
  $async.Future<$3.AutocleanstatusResponse> autoCleanStatus($grpc.ServiceCall call, $3.AutocleanstatusRequest request);
  $async.Future<$3.CheckmessageResponse> checkMessage($grpc.ServiceCall call, $3.CheckmessageRequest request);
  $async.Future<$3.CloseResponse> close($grpc.ServiceCall call, $3.CloseRequest request);
  $async.Future<$3.ConnectResponse> connectPeer($grpc.ServiceCall call, $3.ConnectRequest request);
  $async.Future<$3.CreateinvoiceResponse> createInvoice($grpc.ServiceCall call, $3.CreateinvoiceRequest request);
  $async.Future<$3.DatastoreResponse> datastore($grpc.ServiceCall call, $3.DatastoreRequest request);
  $async.Future<$3.DatastoreusageResponse> datastoreUsage($grpc.ServiceCall call, $3.DatastoreusageRequest request);
  $async.Future<$3.CreateonionResponse> createOnion($grpc.ServiceCall call, $3.CreateonionRequest request);
  $async.Future<$3.DeldatastoreResponse> delDatastore($grpc.ServiceCall call, $3.DeldatastoreRequest request);
  $async.Future<$3.DelinvoiceResponse> delInvoice($grpc.ServiceCall call, $3.DelinvoiceRequest request);
  $async.Future<$3.DevforgetchannelResponse> devForgetChannel($grpc.ServiceCall call, $3.DevforgetchannelRequest request);
  $async.Future<$3.EmergencyrecoverResponse> emergencyRecover($grpc.ServiceCall call, $3.EmergencyrecoverRequest request);
  $async.Future<$3.RecoverResponse> recover($grpc.ServiceCall call, $3.RecoverRequest request);
  $async.Future<$3.RecoverchannelResponse> recoverChannel($grpc.ServiceCall call, $3.RecoverchannelRequest request);
  $async.Future<$3.InvoiceResponse> invoice($grpc.ServiceCall call, $3.InvoiceRequest request);
  $async.Future<$3.InvoicerequestResponse> createInvoiceRequest($grpc.ServiceCall call, $3.InvoicerequestRequest request);
  $async.Future<$3.DisableinvoicerequestResponse> disableInvoiceRequest($grpc.ServiceCall call, $3.DisableinvoicerequestRequest request);
  $async.Future<$3.ListinvoicerequestsResponse> listInvoiceRequests($grpc.ServiceCall call, $3.ListinvoicerequestsRequest request);
  $async.Future<$3.ListdatastoreResponse> listDatastore($grpc.ServiceCall call, $3.ListdatastoreRequest request);
  $async.Future<$3.ListinvoicesResponse> listInvoices($grpc.ServiceCall call, $3.ListinvoicesRequest request);
  $async.Future<$3.SendonionResponse> sendOnion($grpc.ServiceCall call, $3.SendonionRequest request);
  $async.Future<$3.ListsendpaysResponse> listSendPays($grpc.ServiceCall call, $3.ListsendpaysRequest request);
  $async.Future<$3.ListtransactionsResponse> listTransactions($grpc.ServiceCall call, $3.ListtransactionsRequest request);
  $async.Future<$3.MakesecretResponse> makeSecret($grpc.ServiceCall call, $3.MakesecretRequest request);
  $async.Future<$3.PayResponse> pay($grpc.ServiceCall call, $3.PayRequest request);
  $async.Future<$3.ListnodesResponse> listNodes($grpc.ServiceCall call, $3.ListnodesRequest request);
  $async.Future<$3.WaitanyinvoiceResponse> waitAnyInvoice($grpc.ServiceCall call, $3.WaitanyinvoiceRequest request);
  $async.Future<$3.WaitinvoiceResponse> waitInvoice($grpc.ServiceCall call, $3.WaitinvoiceRequest request);
  $async.Future<$3.WaitsendpayResponse> waitSendPay($grpc.ServiceCall call, $3.WaitsendpayRequest request);
  $async.Future<$3.NewaddrResponse> newAddr($grpc.ServiceCall call, $3.NewaddrRequest request);
  $async.Future<$3.WithdrawResponse> withdraw($grpc.ServiceCall call, $3.WithdrawRequest request);
  $async.Future<$3.KeysendResponse> keySend($grpc.ServiceCall call, $3.KeysendRequest request);
  $async.Future<$3.FundpsbtResponse> fundPsbt($grpc.ServiceCall call, $3.FundpsbtRequest request);
  $async.Future<$3.SendpsbtResponse> sendPsbt($grpc.ServiceCall call, $3.SendpsbtRequest request);
  $async.Future<$3.SignpsbtResponse> signPsbt($grpc.ServiceCall call, $3.SignpsbtRequest request);
  $async.Future<$3.UtxopsbtResponse> utxoPsbt($grpc.ServiceCall call, $3.UtxopsbtRequest request);
  $async.Future<$3.TxdiscardResponse> txDiscard($grpc.ServiceCall call, $3.TxdiscardRequest request);
  $async.Future<$3.TxprepareResponse> txPrepare($grpc.ServiceCall call, $3.TxprepareRequest request);
  $async.Future<$3.TxsendResponse> txSend($grpc.ServiceCall call, $3.TxsendRequest request);
  $async.Future<$3.ListpeerchannelsResponse> listPeerChannels($grpc.ServiceCall call, $3.ListpeerchannelsRequest request);
  $async.Future<$3.ListclosedchannelsResponse> listClosedChannels($grpc.ServiceCall call, $3.ListclosedchannelsRequest request);
  $async.Future<$3.DecodepayResponse> decodePay($grpc.ServiceCall call, $3.DecodepayRequest request);
  $async.Future<$3.DecodeResponse> decode($grpc.ServiceCall call, $3.DecodeRequest request);
  $async.Future<$3.DelpayResponse> delPay($grpc.ServiceCall call, $3.DelpayRequest request);
  $async.Future<$3.DelforwardResponse> delForward($grpc.ServiceCall call, $3.DelforwardRequest request);
  $async.Future<$3.DisableofferResponse> disableOffer($grpc.ServiceCall call, $3.DisableofferRequest request);
  $async.Future<$3.DisconnectResponse> disconnect($grpc.ServiceCall call, $3.DisconnectRequest request);
  $async.Future<$3.FeeratesResponse> feerates($grpc.ServiceCall call, $3.FeeratesRequest request);
  $async.Future<$3.FetchinvoiceResponse> fetchInvoice($grpc.ServiceCall call, $3.FetchinvoiceRequest request);
  $async.Future<$3.Fundchannel_cancelResponse> fundChannel_Cancel($grpc.ServiceCall call, $3.Fundchannel_cancelRequest request);
  $async.Future<$3.Fundchannel_completeResponse> fundChannel_Complete($grpc.ServiceCall call, $3.Fundchannel_completeRequest request);
  $async.Future<$3.FundchannelResponse> fundChannel($grpc.ServiceCall call, $3.FundchannelRequest request);
  $async.Future<$3.Fundchannel_startResponse> fundChannel_Start($grpc.ServiceCall call, $3.Fundchannel_startRequest request);
  $async.Future<$3.GetlogResponse> getLog($grpc.ServiceCall call, $3.GetlogRequest request);
  $async.Future<$3.FunderupdateResponse> funderUpdate($grpc.ServiceCall call, $3.FunderupdateRequest request);
  $async.Future<$3.GetrouteResponse> getRoute($grpc.ServiceCall call, $3.GetrouteRequest request);
  $async.Future<$3.ListforwardsResponse> listForwards($grpc.ServiceCall call, $3.ListforwardsRequest request);
  $async.Future<$3.ListoffersResponse> listOffers($grpc.ServiceCall call, $3.ListoffersRequest request);
  $async.Future<$3.ListpaysResponse> listPays($grpc.ServiceCall call, $3.ListpaysRequest request);
  $async.Future<$3.ListhtlcsResponse> listHtlcs($grpc.ServiceCall call, $3.ListhtlcsRequest request);
  $async.Future<$3.MultifundchannelResponse> multiFundChannel($grpc.ServiceCall call, $3.MultifundchannelRequest request);
  $async.Future<$3.MultiwithdrawResponse> multiWithdraw($grpc.ServiceCall call, $3.MultiwithdrawRequest request);
  $async.Future<$3.OfferResponse> offer($grpc.ServiceCall call, $3.OfferRequest request);
  $async.Future<$3.Openchannel_abortResponse> openChannel_Abort($grpc.ServiceCall call, $3.Openchannel_abortRequest request);
  $async.Future<$3.Openchannel_bumpResponse> openChannel_Bump($grpc.ServiceCall call, $3.Openchannel_bumpRequest request);
  $async.Future<$3.Openchannel_initResponse> openChannel_Init($grpc.ServiceCall call, $3.Openchannel_initRequest request);
  $async.Future<$3.Openchannel_signedResponse> openChannel_Signed($grpc.ServiceCall call, $3.Openchannel_signedRequest request);
  $async.Future<$3.Openchannel_updateResponse> openChannel_Update($grpc.ServiceCall call, $3.Openchannel_updateRequest request);
  $async.Future<$3.PingResponse> ping($grpc.ServiceCall call, $3.PingRequest request);
  $async.Future<$3.PluginResponse> plugin($grpc.ServiceCall call, $3.PluginRequest request);
  $async.Future<$3.RenepaystatusResponse> renePayStatus($grpc.ServiceCall call, $3.RenepaystatusRequest request);
  $async.Future<$3.RenepayResponse> renePay($grpc.ServiceCall call, $3.RenepayRequest request);
  $async.Future<$3.ReserveinputsResponse> reserveInputs($grpc.ServiceCall call, $3.ReserveinputsRequest request);
  $async.Future<$3.SendcustommsgResponse> sendCustomMsg($grpc.ServiceCall call, $3.SendcustommsgRequest request);
  $async.Future<$3.SendinvoiceResponse> sendInvoice($grpc.ServiceCall call, $3.SendinvoiceRequest request);
  $async.Future<$3.SetchannelResponse> setChannel($grpc.ServiceCall call, $3.SetchannelRequest request);
  $async.Future<$3.SetconfigResponse> setConfig($grpc.ServiceCall call, $3.SetconfigRequest request);
  $async.Future<$3.SetpsbtversionResponse> setPsbtVersion($grpc.ServiceCall call, $3.SetpsbtversionRequest request);
  $async.Future<$3.SigninvoiceResponse> signInvoice($grpc.ServiceCall call, $3.SigninvoiceRequest request);
  $async.Future<$3.SignmessageResponse> signMessage($grpc.ServiceCall call, $3.SignmessageRequest request);
  $async.Future<$3.Splice_initResponse> splice_Init($grpc.ServiceCall call, $3.Splice_initRequest request);
  $async.Future<$3.Splice_signedResponse> splice_Signed($grpc.ServiceCall call, $3.Splice_signedRequest request);
  $async.Future<$3.Splice_updateResponse> splice_Update($grpc.ServiceCall call, $3.Splice_updateRequest request);
  $async.Future<$3.UnreserveinputsResponse> unreserveInputs($grpc.ServiceCall call, $3.UnreserveinputsRequest request);
  $async.Future<$3.UpgradewalletResponse> upgradeWallet($grpc.ServiceCall call, $3.UpgradewalletRequest request);
  $async.Future<$3.WaitblockheightResponse> waitBlockHeight($grpc.ServiceCall call, $3.WaitblockheightRequest request);
  $async.Future<$3.WaitResponse> wait($grpc.ServiceCall call, $3.WaitRequest request);
  $async.Future<$3.ListconfigsResponse> listConfigs($grpc.ServiceCall call, $3.ListconfigsRequest request);
  $async.Future<$3.StopResponse> stop($grpc.ServiceCall call, $3.StopRequest request);
  $async.Future<$3.HelpResponse> help($grpc.ServiceCall call, $3.HelpRequest request);
  $async.Future<$3.PreapprovekeysendResponse> preApproveKeysend($grpc.ServiceCall call, $3.PreapprovekeysendRequest request);
  $async.Future<$3.PreapproveinvoiceResponse> preApproveInvoice($grpc.ServiceCall call, $3.PreapproveinvoiceRequest request);
  $async.Future<$3.StaticbackupResponse> staticBackup($grpc.ServiceCall call, $3.StaticbackupRequest request);
  $async.Future<$3.BkprchannelsapyResponse> bkprChannelsApy($grpc.ServiceCall call, $3.BkprchannelsapyRequest request);
  $async.Future<$3.BkprdumpincomecsvResponse> bkprDumpIncomeCsv($grpc.ServiceCall call, $3.BkprdumpincomecsvRequest request);
  $async.Future<$3.BkprinspectResponse> bkprInspect($grpc.ServiceCall call, $3.BkprinspectRequest request);
  $async.Future<$3.BkprlistaccounteventsResponse> bkprListAccountEvents($grpc.ServiceCall call, $3.BkprlistaccounteventsRequest request);
  $async.Future<$3.BkprlistbalancesResponse> bkprListBalances($grpc.ServiceCall call, $3.BkprlistbalancesRequest request);
  $async.Future<$3.BkprlistincomeResponse> bkprListIncome($grpc.ServiceCall call, $3.BkprlistincomeRequest request);
  $async.Future<$3.BlacklistruneResponse> blacklistRune($grpc.ServiceCall call, $3.BlacklistruneRequest request);
  $async.Future<$3.CheckruneResponse> checkRune($grpc.ServiceCall call, $3.CheckruneRequest request);
  $async.Future<$3.CreateruneResponse> createRune($grpc.ServiceCall call, $3.CreateruneRequest request);
  $async.Future<$3.ShowrunesResponse> showRunes($grpc.ServiceCall call, $3.ShowrunesRequest request);
  $async.Stream<$3.BlockAddedNotification> subscribeBlockAdded($grpc.ServiceCall call, $3.StreamBlockAddedRequest request);
  $async.Stream<$3.ChannelOpenFailedNotification> subscribeChannelOpenFailed($grpc.ServiceCall call, $3.StreamChannelOpenFailedRequest request);
  $async.Stream<$3.ChannelOpenedNotification> subscribeChannelOpened($grpc.ServiceCall call, $3.StreamChannelOpenedRequest request);
  $async.Stream<$3.PeerConnectNotification> subscribeConnect($grpc.ServiceCall call, $3.StreamConnectRequest request);
  $async.Stream<$3.CustomMsgNotification> subscribeCustomMsg($grpc.ServiceCall call, $3.StreamCustomMsgRequest request);
}
