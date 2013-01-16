.class public Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;
.super Lmeizu_jcifs/dcerpc/DcerpcMessage;
.source "srvsvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/srvsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareGetInfo"
.end annotation


# instance fields
.field public info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

.field public level:I

.field public retval:I

.field public servername:Ljava/lang/String;

.field public sharename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILmeizu_jcifs/dcerpc/ndr/NdrObject;)V
    .locals 0
    .parameter "servername"
    .parameter "sharename"
    .parameter "level"
    .parameter "info"

    .prologue
    .line 407
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 408
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    .line 409
    iput-object p2, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->sharename:Ljava/lang/String;

    .line 410
    iput p3, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->level:I

    .line 411
    iput-object p4, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    .line 412
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
    .line 424
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    .line 425
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 426
    .local v0, _infop:I
    if-eqz v0, :cond_1

    .line 427
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;

    invoke-direct {v1}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareInfo0;-><init>()V

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    .line 430
    :cond_0
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 431
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->info:Lmeizu_jcifs/dcerpc/ndr/NdrObject;

    invoke-virtual {v1, p1}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 434
    :cond_1
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    iput v1, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    .line 435
    return-void
.end method

.method public encode_in(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 416
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->servername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->sharename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 421
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->level:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 422
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 396
    const/16 v0, 0x10

    return v0
.end method
