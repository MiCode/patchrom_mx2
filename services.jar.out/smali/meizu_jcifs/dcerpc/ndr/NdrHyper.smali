.class public Lmeizu_jcifs/dcerpc/ndr/NdrHyper;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "NdrHyper.java"


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 26
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 27
    iput-wide p1, p0, Lmeizu_jcifs/dcerpc/ndr/NdrHyper;->value:J

    .line 28
    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_hyper()J

    move-result-wide v0

    iput-wide v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrHyper;->value:J

    .line 35
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 31
    iget-wide v0, p0, Lmeizu_jcifs/dcerpc/ndr/NdrHyper;->value:J

    invoke-virtual {p1, v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_hyper(J)V

    .line 32
    return-void
.end method
