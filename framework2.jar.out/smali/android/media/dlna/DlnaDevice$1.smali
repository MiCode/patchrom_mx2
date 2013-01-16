.class final Landroid/media/dlna/DlnaDevice$1;
.super Ljava/lang/Object;
.source "DlnaDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/DlnaDevice;
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
        "Landroid/media/dlna/DlnaDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/dlna/DlnaDevice;
    .locals 1
    .parameter "source"

    .prologue
    .line 76
    invoke-static {p1}, Landroid/media/dlna/DlnaDevice;->readFrom(Landroid/os/Parcel;)Landroid/media/dlna/DlnaDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/media/dlna/DlnaDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/dlna/DlnaDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/media/dlna/DlnaDevice;
    .locals 1
    .parameter "size"

    .prologue
    .line 80
    new-array v0, p1, [Landroid/media/dlna/DlnaDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/media/dlna/DlnaDevice$1;->newArray(I)[Landroid/media/dlna/DlnaDevice;

    move-result-object v0

    return-object v0
.end method
