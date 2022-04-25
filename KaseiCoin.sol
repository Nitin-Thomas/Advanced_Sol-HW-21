{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red70\green137\blue204;\red26\green26\blue41;\red172\green172\blue193;
\red212\green212\blue212;\red167\green197\blue152;\red79\green123\blue61;\red194\green126\blue101;\red237\green114\blue173;
\red140\green108\blue11;\red45\green175\blue118;\red13\green102\blue149;}
{\*\expandedcolortbl;;\cssrgb\c33725\c61176\c83922;\cssrgb\c13333\c13725\c21176;\cssrgb\c72941\c73333\c80000;
\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c37647\c54510\c30588;\cssrgb\c80784\c56863\c47059;\cssrgb\c95294\c54118\c73333;
\cssrgb\c61961\c49412\c3137;\cssrgb\c19608\c72941\c53725;\cssrgb\c0\c47843\c65098;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 pragma\cf4 \strokec4  \cf2 \strokec2 solidity\cf4 \strokec4  \cf5 \strokec5 ^\cf6 \strokec6 0.5.0\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf7 \cb3 \strokec7 //  Import the following contracts from the OpenZeppelin library:\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 //    * `ERC20`\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 //    * `ERC20Detailed`\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 //    * `ERC20Mintable`\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 import\cf4 \strokec4  \cf8 \strokec8 "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol"\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 import\cf4 \strokec4  \cf8 \strokec8 "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol"\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 import\cf4 \strokec4  \cf8 \strokec8 "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol"\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf7 \cb3 \strokec7 // Create a constructor for the KaseiCoin contract and have the contract inherit the libraries that you imported from OpenZeppelin.\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 contract\cf4 \strokec4  KaseiCoin \cf2 \strokec2 is\cf4 \strokec4  ERC20\cf5 \strokec5 ,\cf4 \strokec4  ERC20Detailed\cf5 \strokec5 ,\cf4 \strokec4  ERC20Mintable \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3    \cf7 \strokec7 /* address payable owner;\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf7 \cb3 \strokec7     modifier onlyOwner \{\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7         require(msg.sender == owner, "You do not have permission to mint these tokens!");\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7         _;\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7     \}\cf4 \cb1 \strokec4 \
\
\cf7 \cb3 \strokec7     constructor (uint initial_supply) ERC20Detailed("KaseiCoin", "KSC", 18) public \{\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7         owner = msg.sender;\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7         _mint(owner, initial_supply);\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7     \}\cf4 \cb1 \strokec4 \
\
\cf7 \cb3 \strokec7     function mint(address recipient, uint amount) public onlyOwner \{\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7         _mint(recipient, amount);\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7     \}\cf4 \cb1 \strokec4 \
\cf7 \cb3 \strokec7 \}*/\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf9 \strokec9 constructor\cf5 \strokec5 (\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  \cf10 \strokec10 memory\cf4 \strokec4  name\cf5 \strokec5 ,\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  \cf10 \strokec10 memory\cf4 \strokec4  symbol\cf5 \strokec5 ,\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  initial_supply\cb1 \
\cb3     \cf5 \strokec5 )\cf4 \cb1 \strokec4 \
\cb3         ERC20Detailed\cf5 \strokec5 (\cf4 \strokec4 name\cf5 \strokec5 ,\cf4 \strokec4  symbol\cf5 \strokec5 ,\cf4 \strokec4  \cf6 \strokec6 18\cf5 \strokec5 )\cf4 \cb1 \strokec4 \
\cb3         \cf11 \strokec11 public\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         mint\cf5 \strokec5 (\cf12 \strokec12 msg\cf5 \strokec5 .\cf4 \strokec4 sender\cf5 \strokec5 ,\cf4 \strokec4  initial_supply\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 \}\cf4 \cb1 \strokec4 \
}