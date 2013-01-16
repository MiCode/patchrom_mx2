.class public Lmeizu_jcifs/dcerpc/rpc$uuid_t;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "uuid_t"
.end annotation


# instance fields
.field public clock_seq_hi_and_reserved:B

.field public clock_seq_low:B

.field public node:[B

.field public time_hi_and_version:S

.field public time_low:I

.field public time_mid:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 35
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 36
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 37
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 38
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 39
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 40
    const/4 v2, 0x6

    .line 41
    .local v2, _nodes:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 42
    .local v1, _nodei:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 44
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v3, :cond_2

    .line 45
    if-ltz v2, :cond_0

    const v3, 0xffff

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v3, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v4, "invalid array conformance"

    invoke-direct {v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_1
    new-array v3, v2, [B

    iput-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 48
    :cond_2
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 49
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 50
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 19
    iget v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 20
    iget-short v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 21
    iget-short v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 22
    iget-byte v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 23
    iget-byte v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 24
    const/4 v2, 0x6

    .line 25
    .local v2, _nodes:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 26
    .local v1, _nodei:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 28
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 30
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v3, v3, v0

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
