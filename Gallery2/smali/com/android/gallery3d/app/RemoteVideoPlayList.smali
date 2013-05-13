.class public Lcom/android/gallery3d/app/RemoteVideoPlayList;
.super Ljava/lang/Object;
.source "RemoteVideoPlayList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/app/RemoteVideoPlayList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private remoteVideoHeadDuration:J

.field private remoteVideoHighMmsid:Ljava/lang/String;

.field private remoteVideoHignPlayURL:Ljava/lang/String;

.field private remoteVideoMediaId:Ljava/lang/String;

.field private remoteVideoStandardMmsid:Ljava/lang/String;

.field private remoteVideoStandardPlayURL:Ljava/lang/String;

.field private remoteVideoTailDuration:J

.field private remoteVideoTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/gallery3d/app/RemoteVideoPlayList$1;

    invoke-direct {v0}, Lcom/android/gallery3d/app/RemoteVideoPlayList$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoMediaId:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTitle:Ljava/lang/String;

    .line 19
    iput-wide v1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHeadDuration:J

    .line 20
    iput-wide v1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTailDuration:J

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardPlayURL:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHignPlayURL:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardMmsid:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHighMmsid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoMediaId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/gallery3d/app/RemoteVideoPlayList;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHeadDuration:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/RemoteVideoPlayList;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTailDuration:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardPlayURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHignPlayURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardMmsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/RemoteVideoPlayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHighMmsid:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getRemoteVideoHeadDuration()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHeadDuration:J

    return-wide v0
.end method

.method public getRemoteVideoHighMmsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHighMmsid:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteVideoHignPlayURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHignPlayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteVideoMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteVideoStandardMmsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardMmsid:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteVideoStandardPlayURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardPlayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteVideoTailDuration()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTailDuration:J

    return-wide v0
.end method

.method public getRemoteVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setRemoteVideoHeadDuration(J)V
    .locals 0
    .parameter "remoteVideoHeadDuration"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHeadDuration:J

    .line 49
    return-void
.end method

.method public setRemoteVideoHighMmsid(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteVideoHighMmsid"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHighMmsid:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setRemoteVideoHignPlayURL(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteVideoHignPlayURL"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHignPlayURL:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setRemoteVideoMediaId(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteVideoMediaId"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoMediaId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setRemoteVideoStandardMmsid(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteVideoStandardMmsid"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardMmsid:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setRemoteVideoStandardPlayURL(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteVideoStandardPlayURL"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardPlayURL:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setRemoteVideoTailDuration(J)V
    .locals 0
    .parameter "remoteVideoTailDuration"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTailDuration:J

    .line 57
    return-void
.end method

.method public setRemoteVideoTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "remoteVideoTitle"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTitle:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-wide v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHeadDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-wide v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoTailDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardPlayURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHignPlayURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoStandardMmsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/app/RemoteVideoPlayList;->remoteVideoHighMmsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return-void
.end method
