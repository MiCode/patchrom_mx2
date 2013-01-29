.class final Lcom/android/gallery3d/app/RemoteVideoPlayList$1;
.super Ljava/lang/Object;
.source "RemoteVideoPlayList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/RemoteVideoPlayList;
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
        "Lcom/android/gallery3d/app/RemoteVideoPlayList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/gallery3d/app/RemoteVideoPlayList;
    .locals 3
    .parameter "source"

    .prologue
    .line 97
    new-instance v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;

    invoke-direct {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList;-><init>()V

    .line 98
    .local v0, remoteVideoPlayItem:Lcom/android/gallery3d/app/RemoteVideoPlayList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoMediaId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->access$002(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->access$102(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHeadDuration:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->access$202(Lcom/android/gallery3d/app/RemoteVideoPlayList;J)J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTailDuration:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->access$302(Lcom/android/gallery3d/app/RemoteVideoPlayList;J)J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardPlayURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->access$402(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHignPlayURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->access$502(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardMmsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->access$602(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHighMmsid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/RemoteVideoPlayList;->access$702(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/RemoteVideoPlayList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/gallery3d/app/RemoteVideoPlayList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/gallery3d/app/RemoteVideoPlayList;
    .locals 1
    .parameter "size"

    .prologue
    .line 111
    new-array v0, p1, [Lcom/android/gallery3d/app/RemoteVideoPlayList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/RemoteVideoPlayList$1;->newArray(I)[Lcom/android/gallery3d/app/RemoteVideoPlayList;

    move-result-object v0

    return-object v0
.end method
