.class public abstract Lmeizu_jcifs/dcerpc/DcerpcMessage;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "DcerpcMessage.java"

# interfaces
.implements Lmeizu_jcifs/dcerpc/DcerpcConstants;


# instance fields
.field protected alloc_hint:I

.field protected call_id:I

.field protected flags:I

.field protected length:I

.field protected ptype:I

.field protected result:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 28
    iput v1, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 29
    iput v1, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    .line 30
    iput v1, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 31
    iput v1, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 32
    iput v1, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->result:I

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 98
    invoke-virtual {p0, p1}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->decode_header(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 100
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v4, :cond_0

    .line 101
    new-instance v0, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-ne v0, v2, :cond_2

    .line 104
    :cond_1
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 105
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 106
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 108
    :cond_2
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-ne v0, v4, :cond_4

    .line 109
    :cond_3
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->result:I

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_4
    invoke-virtual {p0, p1}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->decode_out(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    goto :goto_0
.end method

.method decode_header(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v1, "DCERPC version not supported"

    invoke-direct {v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 64
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 65
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 66
    new-instance v0, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v1, "Data representation not supported"

    invoke-direct {v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    .line 68
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    new-instance v0, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v1, "DCERPC authentication not supported"

    invoke-direct {v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 71
    return-void
.end method

.method public abstract decode_out(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v1

    .line 74
    .local v1, start:I
    const/4 v0, 0x0

    .line 76
    .local v0, alloc_hint_index:I
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 77
    iget v2, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-nez v2, :cond_0

    .line 78
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v0

    .line 79
    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 80
    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 81
    invoke-virtual {p0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->getOpnum()I

    move-result v2

    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->encode_in(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 85
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->getIndex()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    .line 87
    iget v2, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 89
    iget v2, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 90
    iget v2, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 93
    :cond_1
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 94
    invoke-virtual {p0, p1}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->encode_header(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 95
    iget v2, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 96
    return-void
.end method

.method encode_header(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "buf"

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 51
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 52
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 53
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 54
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 55
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 56
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 57
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->call_id:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 58
    return-void
.end method

.method public abstract encode_in(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation
.end method

.method public abstract getOpnum()I
.end method

.method public getResult()Lmeizu_jcifs/dcerpc/DcerpcException;
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->result:I

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lmeizu_jcifs/dcerpc/DcerpcException;

    iget v1, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->result:I

    invoke-direct {v0, v1}, Lmeizu_jcifs/dcerpc/DcerpcException;-><init>(I)V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlagSet(I)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 35
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 41
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 42
    return-void
.end method

.method public unsetFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 38
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 39
    return-void
.end method
