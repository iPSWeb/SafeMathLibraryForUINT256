// SPDX-License-Identifier: MIT
// SafeMath Library For uint256
// @link            https://github.com/iPSWeb
// @site            PSWeb.ru
// @author          Mr. Pligin <i@psweb.ru>
// @copyright       Copyright (c) 2023, PSWeb

pragma solidity >=0.4.22 <0.9.0;

library SafeMath {

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        require(a + b >= a, "SafeMath: addition overflow");
        return a + b;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0 || b == 0) {
            return 0;
        }
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        require(b > 0, "SafeMath: division by zero");
        return a % b;
    }

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a<b?a:b;
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a>b?a:b;
    }
}
