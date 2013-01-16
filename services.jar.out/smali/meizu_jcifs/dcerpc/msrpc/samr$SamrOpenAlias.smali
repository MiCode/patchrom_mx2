.class public Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;
.super Lmeizu_jcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrOpenAlias"
.end annotation


# instance fields
.field public access_mask:I

.field public alias_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

.field public domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public rid:I


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;IILmeizu_jcifs/dcerpc/rpc$policy_handle;)V
    .locals 0
    .parameter "domain_handle"
    .parameter "access_mask"
    .parameter "rid"
    .parameter "alias_handle"

    .prologue
    .line 301
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 302
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    .line 303
    iput p2, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->access_mask:I

    .line 304
    iput p3, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->rid:I

    .line 305
    iput-object p4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->alias_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    .line 306
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
    .line 314
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->alias_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 315
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->retval:I

    .line 316
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
    .line 309
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 310
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->access_mask:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 311
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrOpenAlias;->rid:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 312
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 290
    const/16 v0, 0x1b

    return v0
.end method
