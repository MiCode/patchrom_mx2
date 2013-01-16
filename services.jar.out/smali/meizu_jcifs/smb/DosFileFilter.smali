.class public Lmeizu_jcifs/smb/DosFileFilter;
.super Ljava/lang/Object;
.source "DosFileFilter.java"

# interfaces
.implements Lmeizu_jcifs/smb/SmbFileFilter;


# instance fields
.field protected attributes:I

.field protected wildcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "wildcard"
    .parameter "attributes"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lmeizu_jcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    .line 33
    iput p2, p0, Lmeizu_jcifs/smb/DosFileFilter;->attributes:I

    .line 34
    return-void
.end method


# virtual methods
.method public accept(Lmeizu_jcifs/smb/SmbFile;)Z
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    iget v1, p0, Lmeizu_jcifs/smb/DosFileFilter;->attributes:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
