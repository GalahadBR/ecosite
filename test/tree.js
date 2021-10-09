const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../app');
const should = chai.should();

chai.use(chaiHttp);

describe('Tree', () => {
    describe('/get tree', () => {
        it('should get my favorite tree', (done) => {
            chai.request(app)
                .get('/tree')
                .end((err, res) => {
                    res.should.have.status(200);
                    res.body.should.be.a('object');
                    done();
                })
        })
    })
})