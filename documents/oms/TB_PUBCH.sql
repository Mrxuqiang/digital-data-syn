/*
================================================================================
��ṹ����:TB_PUBCH
��ṹ����:���ʦ���ϱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBCH;
drop index AK_TB_PUBCH;
drop table TB_PUBCH;
create table TB_PUBCH  (
   PUBCH_ID             INTEGER                         not null,   /* ���ʦID           */
   PUBCH001             VARCHAR2(30)                    not null,   /* ���ʦ����         */
   PUBCH002             VARCHAR2(30)                    not null,   /* ���ʦ����         */
   PUBCH003             INTEGER                         not null,   /* ���ʦ������˾     */
   PUBCH004             VARCHAR2(1) ,                               /* �Ա�               */
   PUBCH005             VARCHAR2(30),                               /* ���֤��           */ 
   PUBCH006             varchar2(255),                              /* ��ס��ַ           */ 
   PUBCH007             VARCHAR2(1)                      not null,  /* ���״̬           */   
   PUBCH008             INTEGER,                                    /* ¼����             */
   PUBCH009             DATE,                                       /* ¼������           */
   PUBCH010             DATE,                                       /* �������           */
   PUBCH011             INTEGER,                                    /* �����             */
   PUBCH012             VARCHAR2(30),                               /* ��ϵ��ʽһ         */
   PUBCH013             VARCHAR2(30),                               /* ��ϵ��ʽ��         */
   PUBCH014             VARCHAR2(30),                               /* E_Mail             */
   PUBCH015             VARCHAR2(30),                               /* QQ                 */
   PUBCH016             VARCHAR2(30),                               /* MSN                */
   PUBCH017             VARCHAR2(30),                               /* ���п���           */
   PUBCH018             VARCHAR2(30),                               /* ��������           */
   PUBCH019             VARCHAR2(255),                              /* ���е�ַ           */ 
   PUBCH020             INTEGER,                                    /* ����ID             */
   PUBCH021             VARCHAR2(30),                               /* ������             */
   CREATE_USER          VARCHAR2(12),                               /* ������Ա           */
   USER_GROUP           VARCHAR2(12),                               /* ������Ա����       */                               
   CREATE_DATE          DATE,                                       /* ��������           */
   MODIFIER             VARCHAR2(12),                               /* �޸���Ա           */
   MODI_DATE            DATE,                                       /* �޸�����           */
   FLAG                 NUMBER(1),                                  /* ����״̬           */                    
   constraint PK_TB_PUBCH primary key (PUBCH_ID)
);
create unique index AK_TB_PUBCH on TB_PUBCH (PUBCH001);
create sequence SEQ_TB_PUBCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCH to public;
grant index  on TB_PUBCH to public;
grant update on TB_PUBCH to public; 
grant delete on TB_PUBCH to public;  
grant insert on TB_PUBCH to public; 
grant select on SEQ_TB_PUBCH to public;   