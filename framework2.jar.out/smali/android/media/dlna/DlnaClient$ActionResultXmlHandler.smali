.class final Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DlnaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/DlnaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionResultXmlHandler"
.end annotation


# instance fields
.field private curTag:Ljava/lang/String;

.field private retMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/dlna/DlnaClient;


# direct methods
.method private constructor <init>(Landroid/media/dlna/DlnaClient;)V
    .locals 1
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->this$0:Landroid/media/dlna/DlnaClient;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 815
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->retMap:Ljava/util/Map;

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->curTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/dlna/DlnaClient;Landroid/media/dlna/DlnaClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 814
    invoke-direct {p0, p1}, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;-><init>(Landroid/media/dlna/DlnaClient;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->curTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 835
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 836
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->retMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->curTag:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .end local v0           #data:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->curTag:Ljava/lang/String;

    .line 843
    return-void
.end method

.method public getResult()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->retMap:Ljava/util/Map;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 825
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "tagName"
    .parameter "attr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 829
    iput-object p3, p0, Landroid/media/dlna/DlnaClient$ActionResultXmlHandler;->curTag:Ljava/lang/String;

    .line 830
    return-void
.end method
