.class public final Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/smil/SmilSimpleParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Smil"
.end annotation


# instance fields
.field mSmilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

.field mSmilHead:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;)V
    .locals 2
    .parameter "smilHead"
    .parameter "smilBody"

    .prologue
    const/4 v1, 0x0

    .line 681
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilHead:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;

    .line 680
    iput-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    .line 682
    if-nez p1, :cond_0

    .line 683
    new-instance v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilHead:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;

    .line 686
    :goto_0
    iput-object p2, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    .line 687
    return-void

    .line 685
    :cond_0
    iput-object p1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilHead:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;

    goto :goto_0
.end method


# virtual methods
.method public makeSmilXml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 690
    iget-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilHead:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;

    if-nez v1, :cond_1

    .line 691
    :cond_0
    const-string v1, ""

    .line 697
    :goto_0
    return-object v1

    .line 692
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 693
    .local v0, smil:Ljava/lang/StringBuffer;
    const-string v1, "<smil>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    iget-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilHead:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;->makeSmilXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    iget-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->mSmilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->makeSmilXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    const-string v1, "</smil>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
