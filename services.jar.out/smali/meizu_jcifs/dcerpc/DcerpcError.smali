.class public interface abstract Lmeizu_jcifs/dcerpc/DcerpcError;
.super Ljava/lang/Object;
.source "DcerpcError.java"


# static fields
.field public static final DCERPC_FAULT_ACCESS_DENIED:I = 0x5

.field public static final DCERPC_FAULT_CANT_PERFORM:I = 0x6d8

.field public static final DCERPC_FAULT_CODES:[I = null

.field public static final DCERPC_FAULT_CONTEXT_MISMATCH:I = 0x1c00001a

.field public static final DCERPC_FAULT_INVALID_TAG:I = 0x1c000006

.field public static final DCERPC_FAULT_MESSAGES:[Ljava/lang/String; = null

.field public static final DCERPC_FAULT_NDR:I = 0x6f7

.field public static final DCERPC_FAULT_OP_RNG_ERROR:I = 0x1c010002

.field public static final DCERPC_FAULT_OTHER:I = 0x1

.field public static final DCERPC_FAULT_PROTO_ERROR:I = 0x1c01000b

.field public static final DCERPC_FAULT_UNK_IF:I = 0x1c010003


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x9

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmeizu_jcifs/dcerpc/DcerpcError;->DCERPC_FAULT_CODES:[I

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DCERPC_FAULT_OTHER"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DCERPC_FAULT_ACCESS_DENIED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DCERPC_FAULT_CANT_PERFORM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DCERPC_FAULT_NDR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DCERPC_FAULT_INVALID_TAG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DCERPC_FAULT_CONTEXT_MISMATCH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DCERPC_FAULT_OP_RNG_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DCERPC_FAULT_UNK_IF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DCERPC_FAULT_PROTO_ERROR"

    aput-object v2, v0, v1

    sput-object v0, Lmeizu_jcifs/dcerpc/DcerpcError;->DCERPC_FAULT_MESSAGES:[Ljava/lang/String;

    return-void

    .line 34
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xd8t 0x6t 0x0t 0x0t
        0xf7t 0x6t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x1ct
        0x1at 0x0t 0x0t 0x1ct
        0x2t 0x0t 0x1t 0x1ct
        0x3t 0x0t 0x1t 0x1ct
        0xbt 0x0t 0x1t 0x1ct
    .end array-data
.end method
