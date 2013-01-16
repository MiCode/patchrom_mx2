.class final Lmeizu/samba/server/LocalSharedFolder$1;
.super Ljava/lang/Object;
.source "LocalSharedFolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/samba/server/LocalSharedFolder;
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
        "Lmeizu/samba/server/LocalSharedFolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lmeizu/samba/server/LocalSharedFolder$1;->createFromParcel(Landroid/os/Parcel;)Lmeizu/samba/server/LocalSharedFolder;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmeizu/samba/server/LocalSharedFolder;
    .locals 7
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    .line 110
    new-instance v0, Lmeizu/samba/server/LocalSharedFolder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_SHARE:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lmeizu/samba/server/LocalSharedFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lmeizu/samba/server/LocalSharedFolder$SharedMode;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v3, Lmeizu/samba/server/LocalSharedFolder$SharedMode;->MODE_USER:Lmeizu/samba/server/LocalSharedFolder$SharedMode;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lmeizu/samba/server/LocalSharedFolder$1;->newArray(I)[Lmeizu/samba/server/LocalSharedFolder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmeizu/samba/server/LocalSharedFolder;
    .locals 1
    .parameter "size"

    .prologue
    .line 121
    new-array v0, p1, [Lmeizu/samba/server/LocalSharedFolder;

    return-object v0
.end method
