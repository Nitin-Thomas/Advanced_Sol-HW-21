{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red70\green137\blue204;\red26\green26\blue41;\red172\green172\blue193;
\red212\green212\blue212;\red167\green197\blue152;\red194\green126\blue101;\red79\green123\blue61;\red237\green114\blue173;
\red45\green175\blue118;\red140\green108\blue11;}
{\*\expandedcolortbl;;\cssrgb\c33725\c61176\c83922;\cssrgb\c13333\c13725\c21176;\cssrgb\c72941\c73333\c80000;
\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c80784\c56863\c47059;\cssrgb\c37647\c54510\c30588;\cssrgb\c95294\c54118\c73333;
\cssrgb\c19608\c72941\c53725;\cssrgb\c61961\c49412\c3137;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 pragma\cf4 \strokec4  \cf2 \strokec2 solidity\cf4 \strokec4  \cf5 \strokec5 ^\cf6 \strokec6 0.5.0\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 import\cf4 \strokec4  \cf7 \strokec7 "./KaseiCoin.sol"\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 import\cf4 \strokec4  \cf7 \strokec7 "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol"\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 import\cf4 \strokec4  \cf7 \strokec7 "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol"\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf8 \cb3 \strokec8 // Have the KaseiCoinCrowdsale contract inherit the following OpenZeppelin:\cf4 \cb1 \strokec4 \
\cf8 \cb3 \strokec8 // * Crowdsale\cf4 \cb1 \strokec4 \
\cf8 \cb3 \strokec8 // * MintedCrowdsale\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 contract\cf4 \strokec4  KaseiCoinCrowdsale \cf2 \strokec2 is\cf4 \strokec4  Crowdsale\cf5 \strokec5 ,\cf4 \strokec4  MintedCrowdsale \cf5 \strokec5 \{\cf4 \strokec4  \cf8 \strokec8 // UPDATE THE CONTRACT SIGNATURE TO ADD INHERITANCE\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cb1 \
\cb3     \cf8 \strokec8 // Provide parameters for all of the features of your crowdsale, such as the `rate`, `wallet` for fundraising, and `token`.\cf4 \cb1 \strokec4 \
\cb3     \cf9 \strokec9 constructor\cf5 \strokec5 (\cf4 \cb1 \strokec4 \
\cb3         \cf8 \strokec8 // YOUR CODE HERE!\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint256\cf4 \strokec4  rate\cf5 \strokec5 ,\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 address\cf4 \strokec4  \cf10 \strokec10 payable\cf4 \strokec4  wallet\cf5 \strokec5 ,\cf4 \cb1 \strokec4 \
\cb3         KaseiCoin token\cb1 \
\cb3     \cf5 \strokec5 )\cf4 \cb1 \strokec4 \
\cb3         Crowdsale\cf5 \strokec5 (\cf4 \strokec4 rate\cf5 \strokec5 ,\cf4 \strokec4  wallet\cf5 \strokec5 ,\cf4 \strokec4  token\cf5 \strokec5 )\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 public\cf4 \strokec4  \cb1 \
\cb3     \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf8 \strokec8 // constructor can stay empty\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 contract\cf4 \strokec4  KaseiCoinCrowdsaleDeployer \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf8 \strokec8 // Create an `address public` variable called `kasei_token_address`.\cf4 \cb1 \strokec4 \
\cb3     \cf2 \strokec2 address\cf4 \strokec4  \cf10 \strokec10 public\cf4 \strokec4  kasei_token_address\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf8 \strokec8 // Create an `address public` variable called `kasei_crowdsale_address`.\cf4 \cb1 \strokec4 \
\cb3     \cf2 \strokec2 address\cf4 \strokec4  \cf10 \strokec10 public\cf4 \strokec4  kasei_crowdsale_address\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\cb3     \cf8 \strokec8 // Add the constructor.\cf4 \cb1 \strokec4 \
\cb3     \cf9 \strokec9 constructor\cf5 \strokec5 (\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  \cf11 \strokec11 memory\cf4 \strokec4  name\cf5 \strokec5 ,\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  \cf11 \strokec11 memory\cf4 \strokec4  symbol\cf5 \strokec5 ,\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 address\cf4 \strokec4  \cf10 \strokec10 payable\cf4 \strokec4  wallet\cb1 \
\cb3     \cf5 \strokec5 )\cf4 \strokec4  \cb1 \
\cb3     \cf10 \strokec10 public\cf4 \strokec4  \cb1 \
\cb3     \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf8 \strokec8 // Create a new instance of the KaseiCoin contract.\cf4 \cb1 \strokec4 \
\cb3         KaseiCoin token \cf5 \strokec5 =\cf4 \strokec4  \cf2 \strokec2 new\cf4 \strokec4  KaseiCoin\cf5 \strokec5 (\cf4 \strokec4 name\cf5 \strokec5 ,\cf4 \strokec4  symbol\cf5 \strokec5 ,\cf4 \strokec4  \cf6 \strokec6 0\cf5 \strokec5 );\cf4 \strokec4   \cb1 \
\cb3         \cb1 \
\cb3         \cf8 \strokec8 // Assign the token contract\'92s address to the `kasei_token_address` variable.\cf4 \cb1 \strokec4 \
\cb3         kasei_token_address \cf5 \strokec5 =\cf4 \strokec4  \cf2 \strokec2 address\cf5 \strokec5 (\cf4 \strokec4 token\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\
\cb3         \cf8 \strokec8 // Create a new instance of the `KaseiCoinCrowdsale` contract\cf4 \cb1 \strokec4 \
\cb3         KaseiCoinCrowdsale kaseiCoin_crowdsale \cf5 \strokec5 =\cf4 \strokec4  \cf2 \strokec2 new\cf4 \strokec4  KaseiCoinCrowdsale\cf5 \strokec5 (\cf6 \strokec6 1\cf5 \strokec5 ,\cf4 \strokec4  wallet\cf5 \strokec5 ,\cf4 \strokec4  token\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3             \cb1 \
\cb3         \cf8 \strokec8 // Aassign the `KaseiCoinCrowdsale` contract\'92s address to the `kasei_crowdsale_address` variable.\cf4 \cb1 \strokec4 \
\cb3         kasei_crowdsale_address \cf5 \strokec5 =\cf4 \strokec4  \cf2 \strokec2 address\cf5 \strokec5 (\cf4 \strokec4 kaseiCoin_crowdsale\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\
\cb3         \cf8 \strokec8 // Set the `KaseiCoinCrowdsale` contract as a minter\cf4 \cb1 \strokec4 \
\cb3         token\cf5 \strokec5 .\cf4 \strokec4 addMinter\cf5 \strokec5 (\cf4 \strokec4 kasei_crowdsale_address\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         \cb1 \
\cb3         \cf8 \strokec8 // Have the `KaseiCoinCrowdsaleDeployer` renounce its minter role.\cf4 \cb1 \strokec4 \
\cb3         token\cf5 \strokec5 .\cf4 \strokec4 renounceMinter\cf5 \strokec5 ();\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 \}\cf4 \cb1 \strokec4 \
\
}