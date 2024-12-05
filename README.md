# ika-dwallet-mock

This is a simplified mock of the ika's `dwallet` module for testing purposes. It provides the same interface (function names and arguments) as the original `dwallet` module but with minimal implementation.

## Usage

1. Deploy the contract:

   ```bash
   sui move publish --path <path_to_your_move_directory>
   ```

2. Call the functions:

   - `approve_messages`:

     ```bash
     sui client call \
       --package <package_id> \
       --module ika_mock \
       --function approve_messages \
       --args <address> 0x1::bcs::Empty
     ```

   - `sign`:

     ```bash
     sui client call \
       --package <package_id> \
       --module ika_mock \
       --function sign \
       --args <address> <address>
     ```

   Replace `<package_id>` and `<address>` with the actual values from your Sui environment.

**Note:** This mock contract is for testing purposes only and does not perform any actual signing or validation.
