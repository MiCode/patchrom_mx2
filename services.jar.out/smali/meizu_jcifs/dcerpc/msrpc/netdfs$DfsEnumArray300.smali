.class public Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumArray300"
.end annotation


# instance fields
.field public count:I

.field public s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 6
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 382
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v4

    iput v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    .line 383
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 385
    .local v2, _sp:I
    if-eqz v2, :cond_4

    .line 386
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 387
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    .line 388
    .local v3, _ss:I
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 389
    .local v1, _si:I
    mul-int/lit8 v4, v3, 0x8

    invoke-virtual {p1, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 391
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    if-nez v4, :cond_2

    .line 392
    if-ltz v3, :cond_0

    const v4, 0xffff

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v4, Lmeizu_jcifs/dcerpc/ndr/NdrException;

    const-string v5, "invalid array conformance"

    invoke-direct {v4, v5}, Lmeizu_jcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :cond_1
    new-array v4, v3, [Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    iput-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    .line 395
    :cond_2
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 396
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 397
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    .line 398
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    invoke-direct {v5}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;-><init>()V

    aput-object v5, v4, v0

    .line 400
    :cond_3
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v0           #_i:I
    .end local v1           #_si:I
    .end local v3           #_ss:I
    :cond_4
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 5
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 364
    iget v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 365
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 367
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    if-eqz v3, :cond_0

    .line 368
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 369
    iget v2, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->count:I

    .line 370
    .local v2, _ss:I
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 371
    iget v1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->index:I

    .line 372
    .local v1, _si:I
    mul-int/lit8 v3, v2, 0x8

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->advance(I)V

    .line 374
    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->derive(I)Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    move-result-object p1

    .line 375
    const/4 v0, 0x0

    .local v0, _i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 376
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray300;->s:[Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsInfo300;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v0           #_i:I
    .end local v1           #_si:I
    .end local v2           #_ss:I
    :cond_0
    return-void
.end method
