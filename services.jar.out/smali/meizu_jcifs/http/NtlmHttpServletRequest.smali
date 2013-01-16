.class Lmeizu_jcifs/http/NtlmHttpServletRequest;
.super Ljavax/servlet/http/HttpServletRequestWrapper;
.source "NtlmHttpServletRequest.java"


# instance fields
.field principal:Ljava/security/Principal;


# direct methods
.method constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V
    .locals 0
    .parameter "req"
    .parameter "principal"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    .line 32
    iput-object p2, p0, Lmeizu_jcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    .line 33
    return-void
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "NTLM"

    return-object v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmeizu_jcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    return-object v0
.end method
