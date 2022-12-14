#! /bin/bash

LIMIT_CORE=LimitCore.sol
LIMIT_ORDERS_MODULE=LimitOrders.sol
UNISWAP_V1_HANDLER=UniswapV1Handler.sol
UNISWAP_V2_HANDLER=UniswapV2Handler.sol

OUTPUT=full

npx truffle-flattener contracts/$LIMIT_CORE > $OUTPUT/$LIMIT_CORE
npx truffle-flattener contracts/modules/$LIMIT_ORDERS_MODULE > $OUTPUT/$LIMIT_ORDERS_MODULE
npx truffle-flattener contracts/handlers/$UNISWAP_V1_HANDLER > $OUTPUT/$UNISWAP_V1_HANDLER
npx truffle-flattener contracts/handlers/$UNISWAP_V2_HANDLER > $OUTPUT/$UNISWAP_V2_HANDLER
