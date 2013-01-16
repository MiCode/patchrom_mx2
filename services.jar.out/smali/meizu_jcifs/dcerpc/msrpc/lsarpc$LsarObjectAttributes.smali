.class public Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;
.super Lmeizu_jcifs/dcerpc/ndr/NdrObject;
.source "lsarpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/dcerpc/msrpc/lsarpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsarObjectAttributes"
.end annotation


# instance fields
.field public attributes:I

.field public length:I

.field public object_name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

.field public root_directory:Lmeizu_jcifs/dcerpc/ndr/NdrSmall;

.field public security_descriptor:I

.field public security_quality_of_service:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/ndr/NdrObject;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 4
    .parameter "_src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 72
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    .line 73
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v1

    .line 74
    .local v1, _root_directoryp:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v0

    .line 75
    .local v0, _object_namep:I
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->attributes:I

    .line 76
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_descriptor:I

    .line 77
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_long()I

    move-result v2

    .line 79
    .local v2, _security_quality_of_servicep:I
    if-eqz v1, :cond_0

    .line 80
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 81
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Lmeizu_jcifs/dcerpc/ndr/NdrSmall;

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/ndr/NdrSmall;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 84
    :cond_0
    if-eqz v0, :cond_2

    .line 85
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    if-nez v3, :cond_1

    .line 86
    new-instance v3, Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v3}, Lmeizu_jcifs/dcerpc/rpc$unicode_string;-><init>()V

    iput-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    .line 88
    :cond_1
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 89
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 92
    :cond_2
    if-eqz v2, :cond_4

    .line 93
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    if-nez v3, :cond_3

    .line 94
    new-instance v3, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-direct {v3}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;-><init>()V

    iput-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    .line 96
    :cond_3
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 97
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-virtual {v3, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 100
    :cond_4
    return-void
.end method

.method public encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    .locals 2
    .parameter "_dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/ndr/NdrException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->align(I)I

    .line 47
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->length:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 48
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Lmeizu_jcifs/dcerpc/ndr/NdrSmall;

    invoke-virtual {p1, v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 49
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {p1, v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 50
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->attributes:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 51
    iget v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_descriptor:I

    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 52
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-virtual {p1, v0, v1}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_referent(Ljava/lang/Object;I)V

    .line 54
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Lmeizu_jcifs/dcerpc/ndr/NdrSmall;

    if-eqz v0, :cond_0

    .line 55
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 56
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->root_directory:Lmeizu_jcifs/dcerpc/ndr/NdrSmall;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/ndr/NdrSmall;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    if-eqz v0, :cond_1

    .line 60
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 61
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->object_name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/rpc$unicode_string;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    if-eqz v0, :cond_2

    .line 65
    iget-object p1, p1, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->deferred:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .line 66
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarObjectAttributes;->security_quality_of_service:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;

    invoke-virtual {v0, p1}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQosInfo;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 69
    :cond_2
    return-void
.end method
