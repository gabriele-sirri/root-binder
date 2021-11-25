TCanvas c{"c", "c", 500, 350};

void test()
{
    RooRealVar x{"x", "x", 0, 10};
    RooUniform pdf{"pdf", "pdf", x};
    auto plot = x.frame();
    pdf.plotOn(plot);
    plot->Draw();
    c.Draw();
}
