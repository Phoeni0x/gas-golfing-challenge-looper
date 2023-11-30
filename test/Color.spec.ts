import { loadFixture } from '@nomicfoundation/hardhat-network-helpers';
import { ethers } from 'hardhat';
import { expect } from 'chai';

const EXPECTED_COLOR = "0x8000fF";

describe('Extract color - Color', function () {
	async function deployColor() {
		const Color = await ethers.getContractFactory('Color');
		const color = await Color.deploy();
		await color.deployed();
		return color;
	}

	it('getColor() should return hex color value', async function () {
		const color = await loadFixture(deployColor);
		const result = await color.getColor();
		expect(result).to.hexEqual(EXPECTED_COLOR);
	});
});
