/*
================================================================================
��ṹ����:TB_HRBAJ
��ṹ����:������Ŀ���ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_HRBAJ;
drop index AK_TB_HRBAJ;
drop table TB_HRBAJ;
create table TB_HRBAJ  (
   HRBAJ_ID             INTEGER                         not null,  /*������Ŀ����ID     */
   HRBAJ001             VARCHAR2(8)                     not null,  /*������Ŀ��         */
   HRBAJ002             VARCHAR2(30)                    not null,  /*������Ŀ��         */
   HRBAJ003             VARCHAR2(1)                     not null,  /*��˰��ʽ           */ 
   HRBAJ004             NUMBER(1)                       not null,  /*�Ƿ�н����         */
   HRBAJ005             NUMBER(1)                       not null,  /*�Ƿ�ɱ���         */  
   HRBAJ006             NUMBER(1)                       not null,  /*�Ƿ�ۼ���         */
   HRBAJ007             NUMBER(1)                       not null,  /*�Ƿ�����         */        
   HRBAJ008             NUMBER(1)                       not null,  /*��λ��ʽ           */
   HRBAJ009             VARCHAR2(12),                   not null,  /*��ƿ�Ŀһ         */
   HRBAJ010             VARCHAR2(12),                   not null,  /*��ƿ�Ŀ��         */                            HRBAJ011             DATE,                           not null,  /*��ע               */                            HRBAJ012             VARCHAR2(255)                   not null,  /*��ʽ��ʽ����       */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
                        
   constraint PK_TB_HRBAJ primary key (HRBAJ_ID)
);
create unique index AK_TB_HRBAJ on TB_HRBAJ (HRBAJ001);
create sequence SEQ_TB_HRBAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAJ to public;
grant index  on TB_HRBAJ to public;
grant update on TB_HRBAJ to public; 
grant delete on TB_HRBAJ to public;  
grant insert on TB_HRBAJ to public; 
grant select on SEQ_TB_HRBAJ to public;   