import express from "express";

import { index, show, create } from '../controllers/orders.js';

const orderRouter = express.Router();

orderRouter.get('/', index);

orderRouter.get('/:slug', show);

orderRouter.post('/', create)

export default orderRouter;
