module ika_mock::ika_mock;
use std::vector;
use sui::tx_context::{TxContext}; 
use sui::event;

public struct Signature has copy, drop {
    sig: vector<u8>,
}

public struct SignOutputEvent has copy, drop {
    signatures: vector<vector<u8>>,
}

public fun approve_messages(
    _cap_id: address, 
    _messages: vector<vector<u8>>, 
) {
    // No-op for this test contract
}

// Entry point for signing (emits a SignOutputEvent with a mock signature)
public fun sign(
    _sign_id: address, 
    _message_approvals: address, 
    _ctx: &mut TxContext,
) {
    event::emit(SignOutputEvent {
        signatures: vector[b"mock_signature"], 
    });
}
