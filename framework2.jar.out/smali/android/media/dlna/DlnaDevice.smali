.class public Landroid/media/dlna/DlnaDevice;
.super Ljava/lang/Object;
.source "DlnaDevice.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/media/dlna/DlnaDevice;",
        ">;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/dlna/DlnaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DEVICE:I = 0x0

.field public static final MEDIA_RENDERER:I = 0x2

.field public static final MEDIA_SERVER:I = 0x1

.field private static final serialVersionUID:J = 0x70c7f6a96d937054L


# instance fields
.field public deviceId:Ljava/lang/String;

.field public friendlyName:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/media/dlna/DlnaDevice$1;

    invoke-direct {v0}, Landroid/media/dlna/DlnaDevice$1;-><init>()V

    sput-object v0, Landroid/media/dlna/DlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/dlna/DlnaDevice;->type:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/media/dlna/DlnaDevice;->type:I

    .line 40
    iput-object p2, p0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/dlna/DlnaDevice;->type:I

    .line 34
    iput-object p1, p0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static readFrom(Landroid/os/Parcel;)Landroid/media/dlna/DlnaDevice;
    .locals 4
    .parameter "src"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, type:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, name:Ljava/lang/String;
    new-instance v3, Landroid/media/dlna/DlnaDevice;

    invoke-direct {v3, v2, v0, v1}, Landroid/media/dlna/DlnaDevice;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public compareTo(Landroid/media/dlna/DlnaDevice;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p1, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p1, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    iget-object v1, p1, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Landroid/media/dlna/DlnaDevice;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/dlna/DlnaDevice;->compareTo(Landroid/media/dlna/DlnaDevice;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 87
    if-nez p1, :cond_0

    move v0, v1

    .line 97
    .end local p1
    :goto_0
    return v0

    .line 90
    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/media/dlna/DlnaDevice;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 91
    check-cast v0, Landroid/media/dlna/DlnaDevice;

    iget-object v0, v0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    check-cast p1, Landroid/media/dlna/DlnaDevice;

    .end local p1
    iget-object v1, p1, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_3
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget v0, p0, Landroid/media/dlna/DlnaDevice;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/media/dlna/DlnaDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
