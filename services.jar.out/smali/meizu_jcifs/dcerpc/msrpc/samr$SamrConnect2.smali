.class public Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;
.super Lmeizu_jcifs/dcerpc/DcerpcMessage;
.source "samr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/samr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamrConnect2"
.end annotation


# instance fields
.field public access_mask:I

.field public handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

.field public retval:I

.field public system_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmeizu_jcifs/dcerpc/rpc$policy_handle;)V
    .locals 0
    .parameter "system_name"
    .parameter "access_mask"
    .parameter "handle"

    .prologue
    .line 57
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;-><init>()V

    .line 58
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    .line 59
    iput p2, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->access_mask:I

    .line 60
    iput-object p3, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    .line 61
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
    .line 72
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->handle:Lmeizu_jcifs/dcerpc/rpc$policy_handle;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$policy_handle;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 73
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->retval:I

    .line 74
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
    .line 64
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 65
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->system_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_string(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrConnect2;->access_mask:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 70
    return-void
.end method

.method public getOpnum()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x39

    return v0
.end method
