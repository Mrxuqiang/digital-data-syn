/*                                        
================================================================================
��ṹ����:TB_RECAA                       
��ṹ����:Ӧ������                       
��ṹĿ��:                               
================================================================================
*/                                        
                                          
drop sequence SEQ_TB_RECAA;               
drop index AK_TB_RECAA;                                          
drop table TB_RECAA;                                             
create table TB_RECAA  (                                         
   RECAA_ID             INTEGER                         not null,  /*Ӧ����ID             */
   RECAA001             INTEGER                         not null,  /*����ID                 */
   RECAA002             VARCHAR2(30)                    not null,  /*Ӧ�յ���             */
   RECAA003             INTEGER,                                   /*̯λID               */
   RECAA004             INTEGER                         not null,  /*�ͻ�ID               */
   RECAA005             INTEGER                         not null,  /*�տ�ͻ�ID           */
   RECAA006             DATE                            not null,  /*��������             */
   RECAA007             INTEGER ,                                  /*��ͬ��ID             */
   RECAA008             VARCHAR2(1)                     not null,  /*������Դ             */
   RECAA009             VARCHAR2(30)                    not null,  /*��Դ����           */
   RECAA010             INTEGER,                                   /*����ID               */
   RECAA011             INTEGER,                                   /*��ԱID               */
   RECAA012             DATE,                                      /*Ӧ����               */
   RECAA013             VARCHAR2(1)                     not null,  /*����״̬             */
   RECAA014             INTEGER ,                                  /*¼��ID               */
   RECAA015             DATE,                                      /*¼������             */
   RECAA016             INTEGER,                                   /*�����ID             */
   RECAA017             DATE,                                      /*�������             */
   RECAA018             NUMBER(16,2),                              /*ԭ�Һ�˰�ϼ�         */
   RECAA019             NUMBER(16,2),                              /*���Һ�˰�ϼ�         */
   RECAA020             NUMBER(16,2),                              /*ԭ�����տ�ϼ�       */
   RECAA021             NUMBER(16,2),                              /*�������տ�ϼ�       */
   RECAA022             VARCHAR2(1)                    not null,   /*����                 */
   RECAA023             VARCHAR2(1)                    not null,   /*����״̬             */
   RECAA024             VARCHAR2(1)                    not null,   /*����ƾ֤             */
   RECAA025             INTEGER                        not null,   /*����ID                 */
   RECAA026             NUMBER(16,4),                               /*����                 */
   RECAA027             INTEGER,                                   /*���㷽ʽID           */
   RECAA028             INTEGER,                                   /*Ӫ����֯ID           */
   RECAA029             VARCHAR2(255),                             /*��ע                 */
   RECAA030             INTEGER,                                   /*��Դ����ID           */
   RECAA031             VARCHAR2(255),                             /*��Ʊ����            */
   RECAA032             VARCHAR2(1),                               /*���˱�־           */
   RECAA033             VARCHAR2(1),                               /*��Դ             */
   RECAA034             NUMBER(4),                                 /*������           */   
   RECAA035             NUMBER(2),                                 /*����ڼ�           */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_RECAA primary key (RECAA_ID)                 
);                                                               
create unique index AK_TB_RECAA on TB_RECAA (RECAA001,RECAA002); 
create sequence SEQ_TB_RECAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAA to public;                              
grant index  on TB_RECAA to public;                              
grant update on TB_RECAA to public;                              
grant delete on TB_RECAA to public;                              
grant insert on TB_RECAA to public;                              
grant select on SEQ_TB_RECAA to public;                          
                       
                       
                       
                       
                       
                       
                       
                       
                       