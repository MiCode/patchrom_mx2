.class final Lmeizu/samba/client/RemoteSharedFolder$1;
.super Ljava/lang/Object;
.source "RemoteSharedFolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/samba/client/RemoteSharedFolder;
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
        "Lmeizu/samba/client/RemoteSharedFolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lmeizu/samba/client/RemoteSharedFolder$1;->createFromParcel(Landroid/os/Parcel;)Lmeizu/samba/client/RemoteSharedFolder;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmeizu/samba/client/RemoteSharedFolder;
    .locals 5
    .parameter "in"

    .prologue
    .line 79
    new-instance v0, Lmeizu/samba/client/RemoteSharedFolder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmeizu/samba/client/RemoteSharedFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lmeizu/samba/client/RemoteSharedFolder$1;->newArray(I)[Lmeizu/samba/client/RemoteSharedFolder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmeizu/samba/client/RemoteSharedFolder;
    .locals 1
    .parameter "size"

    .prologue
    .line 88
    new-array v0, p1, [Lmeizu/samba/client/RemoteSharedFolder;

    return-object v0
.end method
