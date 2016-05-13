/*
================================================================================
��ṹ����:TB_BANBC
��ṹ����:Ʊ�ݹ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BANBC;
drop index AK_TB_BANBC;
drop table TB_BANBC;
create table TB_BANBC  (
   BANBC_ID            INTEGER                              not null,  /*�����ID         */
   BANBC001            INTEGER                              not null,  /*Ʊ�ݹ�������ID   */
   BANBC002            INTEGER                              not null,  /*Ʊ�ݹ����ӱ�ID   */
   BANBC003            INTEGER                              not null,  /*Ʊ������         */
   BANBC004            VARCHAR2(1)                          not null,  /*Ʊ��״̬         */
   BANBC005            INTEGER                              not null,  /*����             */
   BANBC006            INTEGER                              not null,  /*�����˺�         */
   BANBC007            DATE,                                           /*��������         */
   BANBC008            INTEGER,                                        /*���ò���         */
   BANBC009            INTEGER,                                        /*������           */
   BANBC010            NUMBER(16,2),                                    /*�����޶�         */
   BANBC011            VARCHAR2(255),                                   /*������;         */
   BANBC012            INTEGER,                                         /*���þ�����       */
   BANBC013            VARCHAR2(255),                                  /*���ñ�ע         */
   BANBC014            DATE,                                           /*��������         */
   BANBC015            INTEGER,                                        /*��������         */
   BANBC016            INTEGER,                                        /*������           */
   BANBC017            NUMBER(16,2),                                   /*�������         */
   BANBC018            INTEGER,                                        /*����������       */
   BANBC019            VARCHAR2(255),                                  /*������ע         */
   BANBC020            INTEGER,                                        /*���Ͼ�����       */   
   BANBC021            DATE,                                           /*��������         */
   BANBC022            VARCHAR2(60),                                   /*����ԭ��         */
   BANBC023            VARCHAR2(255),                                  /*���ϱ�ע         */
   CREATE_USER          VARCHAR2(12),                                   /*������Ա              */
   USER_GROUP           VARCHAR2(12),                                   /*������Ա����          */                               
   CREATE_DATE          DATE,                                           /*��������              */
   MODIFIER             VARCHAR2(12),                                   /*�޸���Ա              */
   MODI_DATE            DATE,                                           /*�޸�����              */
   FLAG                 NUMBER(1),                                      /*����״̬              */
   constraint PK_TB_BANBC primary key (BANBC_ID)
);
create unique index AK_TB_BANBC on TB_BANBC (BANBC001,BANBC002);
create sequence SEQ_TB_BANBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANBC to public;
grant index  on TB_BANBC to public;
grant update on TB_BANBC to public; 
grant delete on TB_BANBC to public;  
grant insert on TB_BANBC to public; 
grant select on SEQ_TB_BANBC to public;   