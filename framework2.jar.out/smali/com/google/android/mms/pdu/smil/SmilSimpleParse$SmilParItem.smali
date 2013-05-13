.class public final Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/smil/SmilSimpleParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmilParItem"
.end annotation


# instance fields
.field mPart:Lcom/google/android/mms/pdu/PduPart;

.field mTag:Ljava/lang/String;

.field regionItem:Ljava/lang/String;

.field srcItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 847
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mTag:Ljava/lang/String;

    .line 843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->srcItem:Ljava/lang/String;

    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->regionItem:Ljava/lang/String;

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mPart:Lcom/google/android/mms/pdu/PduPart;

    .line 848
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmilParItem\uff1amTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-- src = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->srcItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-- region = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->regionItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPduPart()Lcom/google/android/mms/pdu/PduPart;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mPart:Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->regionItem:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->srcItem:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setPduPart(Lcom/google/android/mms/pdu/PduPart;)V
    .locals 0
    .parameter "part"

    .prologue
    .line 879
    iput-object p1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mPart:Lcom/google/android/mms/pdu/PduPart;

    .line 880
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->regionItem:Ljava/lang/String;

    .line 876
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 871
    iput-object p1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->srcItem:Ljava/lang/String;

    .line 872
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 867
    iput-object p1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->mTag:Ljava/lang/String;

    .line 868
    return-void
.end method
