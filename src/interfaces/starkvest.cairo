# SPDX-License-Identifier: MIT
# StarkVest Contracts for Cairo v0.0.1 (starkvest.cairo)

%lang starknet

# Starkware dependencies
from starkware.cairo.common.uint256 import Uint256

@contract_interface
namespace IStarkVest:
    ###
    # Creates a new vesting for a beneficiary.
    # @param beneficiary address of the beneficiary to whom vested tokens are transferred
    # @param _start start time of the vesting period
    # @param cliff_delta duration in seconds of the cliff in which tokens will begin to vest
    # @param duration duration in seconds of the period in which the tokens will vest
    # @param slice_period_seconds duration of a slice period for the vesting in seconds
    # @param revocable whether the vesting is revocable or not
    # @param amount_total total amount of tokens to be released at the end of the vesting
    ###
    func create_vesting(
        beneficiary : felt,
        cliff_delta : felt,
        start : felt,
        duration : felt,
        slice_period_seconds : felt,
        revocable : felt,
        amount_total : Uint256,
    ) -> (vesting_id : felt):
    end
end