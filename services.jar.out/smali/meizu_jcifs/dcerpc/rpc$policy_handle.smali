.class public Lmeizu_jcifs/dcerpc/rpc$policy_handle;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "rpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/rpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "policy_handle"
.end annotation


# instance fields
.field public type:I

.field public uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
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
    const/4 v4, 0x4

    .line 77
    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 78
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->type:I

    .line 79
    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 80
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    invoke-direct {v3}, Lmeizu_jcifs/dcerpc/rpc$uuid_t;-><init>()V

    iput-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    .line 83
    :cond_0
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_low:I

    .line 84
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_mid:S

    .line 85
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    .line 86
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    .line 87
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    .line 88
    const/4 v2, 0x6

    .line 89
    .local v2, _uuid_nodes:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 90
    .local v1, _uuid_nodei:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 92
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    iget-object v3, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    if-nez v3, :cond_3

    .line 93
    if-ltz v2, :cond_1

    const v3, 0xffff

    if-le v2, v3, :cond_2

    :cond_1
    new-instance v3, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v4, "invalid array conformance"

    invoke-direct {v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_2
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    new-array v4, v2, [B

    iput-object v4, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    .line 96
    :cond_3
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 97
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 98
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    iget-object v3, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_small()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_4
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
    .line 60
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 61
    iget v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->type:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 62
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    iget v3, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_low:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 63
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    iget-short v3, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_mid:S

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 64
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    iget-short v3, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 65
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    iget-byte v3, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 66
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    iget-byte v3, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 67
    const/4 v2, 0x6

    .line 68
    .local v2, _uuid_nodes:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 69
    .local v1, _uuid_nodei:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 71
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 72
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 73
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->uuid:Lmeizu_jcifs/dcerpc/rpc$uuid_t;

    iget-object v3, v3, Lmeizu_jcifs/dcerpc/rpc$uuid_t;->node:[B

    aget-byte v3, v3, v0

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_small(I)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
