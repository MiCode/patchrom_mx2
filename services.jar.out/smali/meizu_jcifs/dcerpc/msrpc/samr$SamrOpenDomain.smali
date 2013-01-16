.class public Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;
.super Lmeizu_jcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrOpenDomain"
.end annotation


# instance fields
.field public access_mask:I

.field public domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

.field public handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;ILmeizu_jcifs/dcerpc/rpc$sid_t;Lmeizu_jcifs/dcerpc/rpc$policy_handle;)V
    .locals 0
    .parameter "handle"
    .parameter "access_mask"
    .parameter "sid"
    .parameter "domain_handle"

    .prologue
    .line 123
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 124
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    .line 125
    iput p2, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->access_mask:I

    .line 126
    iput-object p3, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    .line 127
    iput-object p4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    .line 128
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 137
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->retval:I

    .line 138
    return-void
.end method

.method public encode_in(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 1
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 132
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->access_mask:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 133
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenDomain;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$sid_t;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 134
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x7

    return v0
.end method
