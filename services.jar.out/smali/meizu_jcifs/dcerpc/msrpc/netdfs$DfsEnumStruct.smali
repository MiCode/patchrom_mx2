.class public Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "netdfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/netdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DfsEnumStruct"
.end annotation


# instance fields
.field public e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 425
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 426
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 427
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 429
    .local v0, _ep:I
    if-eqz v0, :cond_1

    .line 430
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    if-nez v1, :cond_0

    .line 431
    new-instance v1, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;

    invoke-direct {v1}, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumArray1;-><init>()V

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    .line 433
    :cond_0
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 434
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 437
    :cond_1
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 3
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 412
    iget v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    invoke-virtual {p1, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 413
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->level:I

    .line 414
    .local v0, _descr:I
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 415
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 417
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    if-eqz v1, :cond_0

    .line 418
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 419
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/netdfs$DfsEnumStruct;->e:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 422
    :cond_0
    return-void
.end method
