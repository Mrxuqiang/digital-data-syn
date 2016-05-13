/*
================================================================================
��ṹ����:TB_BILJG
��ṹ����:����/��Ӫ���˵�������ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJG;
drop index AK_TB_BILJG;
drop table TB_BILJG;
create table TB_BILJG  (
   BILJG_ID              INTEGER                              not null,             /*����/��Ӫ���۵���������ϸID    */        
   BILJG001              INTEGER                              not null,             /*���˵�ID                  */        
   BILJG002              INTEGER                              not null,             /*���۵�����ϸID            */        
   BILJG003              VARCHAR2(30)                         not null,             /*��������                  */        
   BILJG004              INTEGER                              not null,             /*����������ϸID            */        
   BILJG005              INTEGER                              not null,             /*��Ʒ����                  */        
   BILJG006              INTEGER,                                                   /*ά��1                     */        
   BILJG007              INTEGER,                                                   /*ά��2                     */        
   BILJG008              INTEGER,                                                   /*ά��3                     */        
   BILJG009              INTEGER,                                                   /*ά��4                     */        
   BILJG010              INTEGER,                                                   /*ά��5                     */        
   BILJG011              INTEGER                              not null,             /*�ֿ�                      */        
   BILJG012              INTEGER                              not null,             /*��λ                      */        
   BILJG013              INTEGER                              not null,             /*��λ                      */        
   BILJG014              NUMBER(12,2)                         not null,             /*��λ������                */        
   BILJG015              NUMBER(18,3)                         not null,             /*ԭ��������           */        
   BILJG016              NUMBER(18,3)                         not null,             /*���ε�������         */        
   BILJG017              NUMBER(12,2)                         not null,             /*���۵���             */        
   BILJG018              NUMBER(12,2)                         not null,             /*���۽��             */        
   BILJG019              NUMBER(12,2)                         not null,             /*ԭ����               */        
   BILJG020              NUMBER(12,2)                         not null,             /*�¿���               */        
   BILJG021              NUMBER(12,2)                         not null,             /*ԭ���۳ɱ�           */               
   BILJG022              NUMBER(12,2)                         not null,             /*�����۳ɱ�           */               
   BILJG023              NUMBER(12,2)                         not null,             /*�����ɱ���           */               
   BILJG024              NUMBER(12,2)                         not null,             /*�ѽ�����             */               
   BILJG025              INTEGER                              not null,             /*��Ӧ��               */               
   CREATE_USER          VARCHAR2(12),                                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                                       /*��������            */
   MODIFIER             VARCHAR2(12),                                               /*�޸���Ա            */
   MODI_DATE            DATE,                                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                                  /*����״̬            */
   constraint PK_TB_BILJG primary key (BILJG_ID)
);
create unique index AK_TB_BILJG on TB_BILJG (BILJG003,BILJG005);
create sequence SEQ_TB_BILJG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJG to public;
grant index  on TB_BILJG to public;
grant update on TB_BILJG to public; 
grant delete on TB_BILJG to public;  
grant insert on TB_BILJG to public; 
grant select on SEQ_TB_BILJG to public;   