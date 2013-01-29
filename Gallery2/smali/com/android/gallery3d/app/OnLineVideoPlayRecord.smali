.class public Lcom/android/gallery3d/app/OnLineVideoPlayRecord;
.super Ljava/lang/Object;
.source "OnLineVideoPlayRecord.java"


# static fields
.field public static httphead:Ljava/lang/String;


# instance fields
.field public app:Ljava/lang/String;

.field public appver:Ljava/lang/String;

.field public bufcount:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public ddurl:Ljava/lang/String;

.field public did:Ljava/lang/String;

.field public err:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public netspeed:Ljava/lang/String;

.field public nettype:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public playedTime:Ljava/lang/String;

.field public playurl:Ljava/lang/String;

.field public rate:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public statver:Ljava/lang/String;

.field public terminaltype:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public utime:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public vinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "http://dc.letv.com/m/p?"

    sput-object v0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->httphead:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->nettype:Ljava/lang/String;

    .line 6
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->uid:Ljava/lang/String;

    .line 13
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->bufcount:Ljava/lang/String;

    .line 15
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->from:Ljava/lang/String;

    .line 17
    const-string v0, "4"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->err:Ljava/lang/String;

    .line 18
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->netspeed:Ljava/lang/String;

    .line 20
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->statver:Ljava/lang/String;

    .line 22
    const-string v0, "0101200990063"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->app:Ljava/lang/String;

    .line 23
    const-string v0, "3.1"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->appver:Ljava/lang/String;

    .line 24
    const-string v0, "Android"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->os:Ljava/lang/String;

    .line 25
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->terminaltype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearRecord()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->cid:Ljava/lang/String;

    .line 35
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->vinfo:Ljava/lang/String;

    .line 36
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->ddurl:Ljava/lang/String;

    .line 37
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playurl:Ljava/lang/String;

    .line 38
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->status:Ljava/lang/String;

    .line 39
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->utime:Ljava/lang/String;

    .line 40
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playedTime:Ljava/lang/String;

    .line 41
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->uuid:Ljava/lang/String;

    .line 42
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->rate:Ljava/lang/String;

    .line 43
    const-string v0, "-"

    iput-object v0, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->did:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public getPlayRecord()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->nettype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->vinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->ddurl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playurl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->utime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->bufcount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->playedTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->err:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->netspeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->rate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->statver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->did:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->appver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->os:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->terminaltype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, playRecord:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/gallery3d/app/OnLineVideoPlayRecord;->httphead:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
