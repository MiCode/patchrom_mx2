.class final Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil$1;
.super Ljava/lang/Object;
.source "AdsSaltUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->getKeyFromParams(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    check-cast p1, Lorg/apache/http/NameValuePair;

    .end local p1
    check-cast p2, Lorg/apache/http/NameValuePair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil$1;->compare(Lorg/apache/http/NameValuePair;Lorg/apache/http/NameValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/NameValuePair;Lorg/apache/http/NameValuePair;)I
    .locals 2
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 30
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
