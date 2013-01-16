.class final Landroid/media/dlna/DlnaProtocolInfo$1;
.super Ljava/lang/Object;
.source "DlnaProtocolInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/DlnaProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/media/dlna/DlnaProtocolInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/dlna/DlnaProtocolInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 163
    invoke-static {p1}, Landroid/media/dlna/DlnaProtocolInfo;->readFrom(Landroid/os/Parcel;)Landroid/media/dlna/DlnaProtocolInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Landroid/media/dlna/DlnaProtocolInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/dlna/DlnaProtocolInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/dlna/DlnaProtocolInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 159
    new-array v0, p1, [Landroid/media/dlna/DlnaProtocolInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Landroid/media/dlna/DlnaProtocolInfo$1;->newArray(I)[Landroid/media/dlna/DlnaProtocolInfo;

    move-result-object v0

    return-object v0
.end method
