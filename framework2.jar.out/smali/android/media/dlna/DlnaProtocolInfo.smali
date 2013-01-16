.class public Landroid/media/dlna/DlnaProtocolInfo;
.super Ljava/lang/Object;
.source "DlnaProtocolInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dlna/DlnaProtocolInfo$DLNAFlags;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/dlna/DlnaProtocolInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRAILING_ZEROS:Ljava/lang/String; = "000000000000000000000000"

.field public static final WILDCARD:Ljava/lang/String; = "*"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected additionalInfo:Ljava/lang/String;

.field protected contentFormat:Ljava/lang/String;

.field protected network:Ljava/lang/String;

.field protected protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Landroid/media/dlna/DlnaProtocolInfo$1;

    invoke-direct {v0}, Landroid/media/dlna/DlnaProtocolInfo$1;-><init>()V

    sput-object v0, Landroid/media/dlna/DlnaProtocolInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v1, "*"

    iput-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    .line 40
    const-string v1, "*"

    iput-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    .line 41
    const-string v1, "*"

    iput-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 42
    const-string v1, "*"

    iput-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 45
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 47
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, split:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parse ProtocolInfo string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    .line 52
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    .line 53
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 54
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "protocol"
    .parameter "network"
    .parameter "contentFormat"
    .parameter "additionalInfo"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "*"

    iput-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    .line 40
    const-string v0, "*"

    iput-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    .line 41
    const-string v0, "*"

    iput-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 42
    const-string v0, "*"

    iput-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 58
    if-nez p1, :cond_0

    const-string p1, "*"

    .end local p1
    :cond_0
    iput-object p1, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    .line 59
    if-nez p2, :cond_1

    const-string p2, "*"

    .end local p2
    :cond_1
    iput-object p2, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    .line 60
    if-nez p3, :cond_2

    const-string p3, "*"

    .end local p3
    :cond_2
    iput-object p3, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 61
    if-nez p4, :cond_3

    const-string p4, "*"

    .end local p4
    :cond_3
    iput-object p4, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static listFrom(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/dlna/DlnaProtocolInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v6, 0x1

    invoke-static {p0, v6}, Landroid/media/dlna/DlnaUtils;->fromCommaSeparatedList(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, infos:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/media/dlna/DlnaProtocolInfo;>;"
    if-eqz v3, :cond_0

    .line 112
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 113
    .local v2, info:Ljava/lang/String;
    new-instance v6, Landroid/media/dlna/DlnaProtocolInfo;

    invoke-direct {v6, v2}, Landroid/media/dlna/DlnaProtocolInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #info:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_0
    return-object v5
.end method

.method public static listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/dlna/DlnaProtocolInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/media/dlna/DlnaProtocolInfo;>;"
    if-nez p0, :cond_0

    .line 121
    const-string v0, ""

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/media/dlna/DlnaProtocolInfo;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/dlna/DlnaUtils;->toCommaSeparatedList([Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static readFrom(Landroid/os/Parcel;)Landroid/media/dlna/DlnaProtocolInfo;
    .locals 5
    .parameter "src"

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, protocol:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, network:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, contentFormat:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, additionalInfo:Ljava/lang/String;
    new-instance v4, Landroid/media/dlna/DlnaProtocolInfo;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/media/dlna/DlnaProtocolInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 89
    check-cast v0, Landroid/media/dlna/DlnaProtocolInfo;

    .line 91
    .local v0, that:Landroid/media/dlna/DlnaProtocolInfo;
    iget-object v3, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 92
    :cond_4
    iget-object v3, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 93
    :cond_5
    iget-object v3, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 94
    :cond_6
    iget-object v3, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getContentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getContentFormatMimeType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 102
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 103
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 104
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 105
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 141
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Landroid/media/dlna/DlnaProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return-void
.end method
