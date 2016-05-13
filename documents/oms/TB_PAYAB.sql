/*
================================================================================
��ṹ����:TB_PAYAB
��ṹ����:�ݹ���ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAB;
drop index AK_TB_PAYAB;
drop table TB_PAYAB;
create table TB_PAYAB  (
   PAYAB_ID             INTEGER                         not null,  /*�ݹ���ϸID        */
   PAYAB001             INTEGER                         not null,  /*�ݹ�����ID        */
   PAYAB002             VARCHAR2(1)                     not null,  /*������Դ          */
   PAYAB003             VARCHAR2(30)                    not null,  /*��Դ����          */
   PAYAB004             INTEGER                         not null,  /*��ƷID            */                                                                            
   PAYAB005             INTEGER                         not null,  /*��֧�춯��ID        */ 
   PAYAB006             INTEGER ,                                  /*��ƿ�ĿID          */ 
   PAYAB007             INTEGER,                                   /*��λID              */ 
   PAYAB008             NUMBER(18,3),                              /*����              */ 
   PAYAB009             NUMBER(16,2),                              /*ԭ�ҵ���          */
   PAYAB010             NUMBER(16,2),                              /*���ҵ���          */ 
   PAYAB011             INTEGER,                                   /*˰��ID              */ 
   PAYAB012             NUMBER(5,4),                               /*˰��              */ 
   PAYAB013             NUMBER(16,2),                              /*ԭ��δ˰���      */                                                                                           
   PAYAB014             NUMBER(16,2),                              /*����δ˰���      */                                                                                           
   PAYAB015             NUMBER(16,2),                              /*ԭ��˰��          */                                                                                           
   PAYAB016             NUMBER(16,2),                              /*����˰��          */                                                                                           
   PAYAB017             NUMBER(16,2),                              /*ԭ�Һ�˰���      */                                                                                          
   PAYAB018             NUMBER(16,2),                              /*���Һ�˰���      */                                                                                            
   PAYAB019             NUMBER(16,2),                              /*ԭ�ҽ��˽��      */                                                                                            
   PAYAB020             NUMBER(16,2),                              /*���ҽ��ʽ��      */                                                                                            
   PAYAB021             NUMBER(18,3),                              /*��������          */ 
   PAYAB022             VARCHAR2(1),                               /*������             */  
   PAYAB023             INTEGER                        not null,   /*��Դ����ID         */
   PAYAB024             INTEGER                        not null,   /*��Դ��ϸID         */
   PAYAB025             INTEGER ,                                  /*Ӫ����֯ID         */
   PAYAB026             INTEGER ,                                  /*��Ʒ����id         */
   PAYAB027             INTEGER ,                                  /*��ƷƷ��id         */
   PAYAB028             INTEGER ,                                  /*��Ʒϵ��id         */
   PAYAB029             VARCHAR2(1) ,                              /*��������           */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PAYAB primary key (PAYAB_ID)
);
create sequence SEQ_TB_PAYAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAB to public;
grant index  on TB_PAYAB to public;
grant update on TB_PAYAB to public; 
grant delete on TB_PAYAB to public;  
grant insert on TB_PAYAB to public; 
grant select on SEQ_TB_PAYAB to public;   