/*
================================================================================
��ṹ����:TB_SERDC
��ṹ����:�ͻ��طõ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERDC;
drop index AK_TB_SERDC;
drop table TB_SERDC;
create table TB_SERDC  (
   SERDC_ID           INTEGER                           not null,                 /*�طõ�ID              */
   SERDC001           INTEGER                           not null,                 /*�طõ���              */
   SERDC002           VARCHAR2(30)                      not null,                 /*�طõ���              */
   SERDC003           INTEGER                           not null,                 /*��װ���񵥺�          */
   SERDC004           VARCHAR2(1)                       not null,                 /*��Դ��������          */
   SERDC005           VARCHAR2(30)                      not null,                 /*��Դ����              */
   SERDC006           DATE                              not null,                 /*�ط�����              */
   SERDC007           VARCHAR2(1)                       not null,                 /*��������              */
   SERDC008           VARCHAR2(1)                       not null,                 /*�ͻ�����              */
   SERDC009           VARCHAR2(10),                                               /*�˿�����              */
   SERDC010           VARCHAR2(255),                                              /*�ͻ���ַ              */
   SERDC011           VARCHAR2(30),                                               /*��ϵ��ʽ              */
   SERDC012           DATE,                                                       /*ʵ�������            */
   SERDC013           INTEGER                           not null,                 /*Ӫ����֯              */
   SERDC014           VARCHAR2(30),                                               /*�ط���                */
   SERDC015           VARCHAR2(1)                       not null,                 /*����1                 */
   SERDC016           VARCHAR2(1)                       not null,                 /*����2                 */     
   SERDC017           VARCHAR2(1)                       not null,                 /*����3                 */     
   SERDC018           VARCHAR2(1)                       not null,                 /*����4                 */
   SERDC019           VARCHAR2(1)                       not null,                 /*����5                 */
   SERDC020           VARCHAR2(1)                       not null,                 /*����6                 */
   SERDC021           VARCHAR2(1)                       not null,                 /*����7                 */
   SERDC022           VARCHAR2(1)                       not null,                 /*����8                 */
   SERDC023           VARCHAR2(1)                       not null,                 /*����9                 */
   SERDC024           VARCHAR2(1)                       not null,                 /*����10                */
   SERDC025           NUMBER(12,2),                                               /*�ٵ�ʱ��              */
   SERDC026           VARCHAR2(255),                                              /*ԭ��                  */
   SERDC027           VARCHAR2(255),                                              /*��������              */
   SERDC028           VARCHAR2(255),                                              /*����Ҫ��              */
   SERDC029           VARCHAR2(1),                                                /*���״̬              */
   SERDC030           INTEGER,                                                    /*¼����Ա              */
   SERDC031           DATE,                                                       /*¼������              */
   SERDC032           INTEGER,                                                    /*�����Ա              */ 
   SERDC033           DATE,                                                       /*�������              */ 
   CREATE_USER        VARCHAR2(1),                                                /*������Ա             */
   USER_GROUP         VARCHAR2(12),                                               /*������Ա����         */                               
   CREATE_DATE        DATE,                                                       /*��������             */
   MODIFIER           VARCHAR2(12),                                               /*�޸���Ա             */
   MODI_DATE          DATE,                                                       /*�޸�����             */
   FLAG               NUMBER(1),                                                  /*����״̬             */
   constraint PK_TB_SERDC primary key (SERDC_ID)
);
create unique index AK_TB_SERDC on TB_SERDC (SERDC001,SERDC002);
create sequence SEQ_TB_SERDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDC to public;
grant index  on TB_SERDC to public;
grant update on TB_SERDC to public; 
grant delete on TB_SERDC to public;  
grant insert on TB_SERDC to public; 
grant select on SEQ_TB_SERDC to public;   