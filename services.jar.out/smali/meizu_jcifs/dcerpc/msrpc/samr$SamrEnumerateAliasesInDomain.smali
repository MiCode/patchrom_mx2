.class public Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;
.super Lmeizu_jcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrEnumerateAliasesInDomain"
.end annotation


# instance fields
.field public acct_flags:I

.field public domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

.field public num_entries:I

.field public resume_handle:I

.field public retval:I

.field public sam:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;


# direct methods
.method public constructor <init>(Lmeizu_jcifs/dcerpc/rpc$policy_handle;IILmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;I)V
    .locals 0
    .parameter "domain_handle"
    .parameter "resume_handle"
    .parameter "acct_flags"
    .parameter "sam"
    .parameter "num_entries"

    .prologue
    .line 261
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 262
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    .line 263
    iput p2, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 264
    iput p3, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->acct_flags:I

    .line 265
    iput-object p4, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 266
    iput p5, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->num_entries:I

    .line 267
    return-void
.end method


# virtual methods
.method public decode_out(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    .line 276
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 277
    .local v0, _samp:I
    if-eqz v0, :cond_1

    .line 278
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-direct {v1}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    .line 281
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-virtual {v1, p1}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 284
    :cond_1
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->num_entries:I

    .line 285
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    .line 286
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
    .line 270
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->domain_handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 271
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->resume_handle:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 272
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->acct_flags:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 273
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 248
    const/16 v0, 0xf

    return v0
.end method
