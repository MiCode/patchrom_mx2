.class public final Landroid/media/dlna/DlnaProtocolInfo$DLNAFlags;
.super Ljava/lang/Object;
.source "DlnaProtocolInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/DlnaProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DLNAFlags"
.end annotation


# static fields
.field public static final BACKGROUND_TRANSFERT_MODE:I = 0x400000

.field public static final BYTE_BASED_SEEK:I = 0x20000000

.field public static final CONNECTION_STALL:I = 0x200000

.field public static final DLNA_V15:I = 0x100000

.field public static final FLAG_PLAY_CONTAINER:I = 0x10000000

.field public static final INTERACTIVE_TRANSFERT_MODE:I = 0x800000

.field public static final RTSP_PAUSE:I = 0x2000000

.field public static final S0_INCREASE:I = 0x8000000

.field public static final SENDER_PACED:I = -0x80000000

.field public static final SN_INCREASE:I = 0x4000000

.field public static final STREAMING_TRANSFER_MODE:I = 0x1000000

.field public static final TIME_BASED_SEEK:I = 0x40000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
