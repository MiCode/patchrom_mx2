.class public final Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/smil/SmilSimpleParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmilSaxHandler"
.end annotation


# instance fields
.field private smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

.field public startBody:Z

.field public startPar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 609
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    .line 612
    iput-boolean v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->startBody:Z

    .line 613
    iput-boolean v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->startPar:Z

    return-void
.end method

.method private addParAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Z
    .locals 6
    .parameter "tagName"
    .parameter "attributes"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 644
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->SMIL_PAR_ITEM_TAG:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 645
    sget-object v5, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->SMIL_PAR_ITEM_TAG:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 646
    iget-object v5, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->itemLast()Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v1

    .line 647
    .local v1, par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    new-instance v2, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;-><init>()V

    .line 648
    .local v2, parItem:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setTag(Ljava/lang/String;)V

    .line 649
    sget-object v5, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->SMIL_PAR_ITEM_ATTR_TAG:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setSrc(Ljava/lang/String;)V

    .line 650
    sget-object v4, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->SMIL_PAR_ITEM_ATTR_TAG:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setRegion(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;)V

    .line 655
    .end local v1           #par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    .end local v2           #parItem:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    :goto_1
    return v3

    .line 644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 655
    goto :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 661
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 675
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 666
    const-string v0, "body"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iput-boolean v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->startBody:Z

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    const-string v0, "par"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iput-boolean v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->startPar:Z

    goto :goto_0
.end method

.method public getSmilBody()Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    .line 622
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 627
    const-string v1, "body"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    iput-boolean v2, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->startBody:Z

    .line 630
    new-instance v1, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;-><init>()V

    iput-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->startBody:Z

    if-eqz v1, :cond_0

    .line 633
    const-string v1, "par"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 634
    iput-boolean v2, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->startPar:Z

    .line 635
    new-instance v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;-><init>()V

    .line 636
    .local v0, smilPar:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    iget-object v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;)V

    goto :goto_0

    .line 637
    .end local v0           #smilPar:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->startPar:Z

    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->addParAttrs(Ljava/lang/String;Lorg/xml/sax/Attributes;)Z

    goto :goto_0
.end method
